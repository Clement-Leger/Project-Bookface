<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\PostController;

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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/add_user', [UserController::class, 'index']);
Route::post('/store_user', [UserController::class, 'store']);

Route::get('login', [UserController::class, 'login_redirection']);
Route::post('/login_user', [UserController::class, 'login']);

//TEST GET & POST USERS
Route::get('/users', [UserController::class, 'get_users']);
Route::post('/response_user', [UserController::class, 'post_users']);