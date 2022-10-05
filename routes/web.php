<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MemberController;

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

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', 'App\Http\Controllers\MemberController@index');
Route::get('/search','App\Http\Controllers\MemberController@search');
Route::get('/member/{id}','App\Http\Controllers\MemberController@viewmember');
Route::post('/find','App\Http\Controllers\MemberController@find');

