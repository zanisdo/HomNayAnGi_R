<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\FoodController;
use App\Http\Controllers\AccountController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {return view('layouts.index');})->name('home');


Route::controller(AuthController::class)->group(function(){

    Route::get('login', 'index')->name('login');

    Route::get('registration', 'registration')->name('registration');

    Route::post('validate_registration', 'validate_registration')->name('validate_registration');

    Route::post('validate_login', 'validate_login')->name('validate_login');

    Route::get('logout', 'logout')->name('logout');

    Route::get('myaccount', 'myAccount')->name('myaccount');

    Route::get('favoritesettings', 'favoriteSettings')->name('favoritesettings');

});

Route::controller(FoodController::class)->middleware('auth')->group(function(){

    Route::get('food', 'index')->name('food');

    Route::get('filter', 'filter')->name('filter');

    Route::get('favorite', 'favorite')->name('favorite');

});

Route::controller(AccountController::class)->group(function(){

    Route::get('settings', 'settings')->name('settings');

});
