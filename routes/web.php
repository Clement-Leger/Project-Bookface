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

Route::get('login', [UserController::class, 'index'])->name('login');
Route::post('post-login', [UserController::class, 'postLogin'])->name('login.post');

Route::get('/registration', [UserController::class, 'registration'])->name('register');
Route::post('/post-registration', [UserController::class, 'postRegistration'])->name('register.post');

Route::get('dashboard', [UserController::class, 'dashboard']); 
Route::get('logout', [UserController::class, 'logout'])->name('logout');


//TEST GET & POST USERS
Route::get('/users', [UserController::class, 'get_users']);
Route::post('/response_user', [UserController::class, 'post_users']);