<?php

use App\Http\Controllers\ProductController;
use App\Http\Controllers\PublicationController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\SearchBarController;

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

// SECTION LOGIN / REGISTRATION

Route::get('login', [UserController::class, 'index'])->name('login');
Route::post('post-login', [UserController::class, 'postLogin'])->name('login.post');

Route::get('/registration', [UserController::class, 'registration'])->name('register');
Route::post('/post-registration', [UserController::class, 'postRegistration'])->name('register.post');

Route::get('dashboard', [UserController::class, 'dashboard']); 
Route::get('logout', [UserController::class, 'logout'])->name('logout');

//ROUTE TEST SEARCH BAR
Route::get('test', [SearchBarController::class, 'index'])->name('zone-de-test');
Route::get('search', [SearchBarController::class, 'search']);

//ROUTE TEST PUBLICATION
Route::resource('products', ProductController::class);
Route::get('salut', [ProductController::class, 'index']);

//TEST API GET & POST USERS
Route::get('/users', [UserController::class, 'get_users']);
Route::post('/response_user', [UserController::class, 'post_users']);