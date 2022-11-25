<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

class FoodController extends Controller
{
    public function index(){

        return view('food.index');
    }

    public function filter(){
        return view('food.filter');
    }

    public function favorite(){
        return view('food.favorites');
    }
}
