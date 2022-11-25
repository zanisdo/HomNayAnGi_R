<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AccountController extends Controller
{
    public function settings(){
        return view('Auth.account.settings');
    }
}
