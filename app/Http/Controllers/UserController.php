<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

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
        $user->password = $request->password;
        $user->confirm_password = $request->confirm_password;
        $user->email = $request->email;
        $user->save();
        return redirect('add_user')->with('status', 'You have successfully subscribed');
    }
}