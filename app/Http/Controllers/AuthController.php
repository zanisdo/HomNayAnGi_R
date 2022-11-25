<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Validator;
use Hash;
use Session;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function index(){
        return view('Auth.login');
    }

    public function registration() {
        return view('Auth.registration');
    }

    public function validate_registration(Request $request){

        Validator::extend('without_spaces', function($attr, $value){
            return preg_match('/^\S*$/u', $value);
        });
        //required name/email/password by using validate
        $request->validate([
            'name'      =>      'required|without_spaces',
            'email'     =>      'required',
            'password'  =>      'required',
            'mobile'    =>      'required'
        ], ['name.without_spaces'=>'Do not allowed space']);

        //get all data $request above to $data (this is array)
        $data = $request->all();

        //create new line in User table
        User::create([
            'name'      =>      $data['name'],
            'email'     =>      $data['email'],
            'mobile'    =>      $data['mobile'],
            //change password to type Hash (security)
            'password'  =>      Hash::make($data['password'])
        ]);

        return redirect('login')->with('success', 'Registration completed, you can login for now');
    }

    public function validate_login(Request $request) {

        Validator::extend('without_spaces', function($attr, $value){
            return preg_match('/^\S*$/u', $value);
        });
        //required email/password by using validate
        $request->validate([
            'name'     =>      'required|without_spaces',
            'password'  =>      'required'
        ], ['name.without_space' => 'Do not allowed space']);

        //get data $request above to $credentials but for sure we use Only to get only email and password
        $credentials = $request->only('name', 'password');

        if (Auth::attempt($credentials)){
            return redirect()->route('food');
        } else {
            return redirect('login')->with('success', 'Invalid account or password');
        }
    }

    public function logout(){
        Session::flush();

        Auth::logout();

        return Redirect('login');
    }
}
