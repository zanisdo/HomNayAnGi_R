<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Food;
use Illuminate\Support\Facades\Auth;

class FoodController extends Controller
{
    public function index(){

        $food = Food::orderBy('food_id', 'ASC')->paginate(4);
        return view('food.index', [
            'food' => $food
        ]);
    }

    public function filter(Request $request){
        // $food = Food::all();
        // return view('food.filter');
        $food = Food::query()->whereIn('category_id', $request->input())->get();
        return view('food.filter',[
            'food'=>$food
        ]);
        // if ($request->has('banhtrang')){
        //     $food = Food::query()->where('category_id','=',2)->get();
        // } else if ($request->has('kho')){

        // } else if ($request->has('monmut')){

        // } else if ($request->has('keo')){

        // } else if ($request->has('banhtrang')){}
    }

    public function favorite(){
        return view('food.favorites');
    }
}
