<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

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

        //required name/email/password by using validate
        $request->validate([
            'name'      =>      'required',
            'email'     =>      'required',
            'password'  =>      'required',
            'mobile'    =>      'required'
        ]);

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

        //required email/password by using validate
        $request->validate([
            'email'     =>      'required',
            'password'  =>      'required'
        ]);

        //get data $request above to $credentials but for sure we use Only to get only email and password
        $credentials = $request->only('email', 'password');

        if (Auth::attempt($credentials)){
            return redirect()->route('home');
        } else {
            dd($credentials);
            // return redirect('login')->with('success', 'Invalid account or password');
        }
    }

    public function logout(){
        Session::flush();

        Auth::logout();

        return Redirect('login');
    }
}
