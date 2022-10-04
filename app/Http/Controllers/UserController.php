<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{
    //
    public function index()
    {
        return view('add_user');
    }

    public function store(Request $request)
    {
        $user = new User;
        $user->name = $request->name;
        $user->password = Hash::make($request->password);
        $user->confirm_password = Hash::make($request->confirm_password);
        $user->email = $request->email;
        $user->remember_token = Str::random(10);
        $user->save();
        return redirect('add_user')->with('status', 'You have successfully subscribed');
    }

    public function get_users(){
        // $users = DB::table('users')->select('id','name','email')->get();
        return User::all();
    }

    public function login_redirection(){
        return view('auth.login');
    }

    public function login(Request $request){

        $request->validate([
            'name' => 'required',
            'password' => 'required'
        ]);

        $credentials = $request->only('name', 'password');
        if (Auth::attempt($credentials)) {
            return redirect()->intented('dashboard')
                            ->withSucess('Signed in');
        }

        return redirect('login_user')->withSuccess('Login details are not valid');
    }
}