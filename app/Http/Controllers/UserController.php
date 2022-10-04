<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Session;

class UserController extends Controller
{
    public function index()
    {
        return view ('auth.login');
    }

    public function registration()
    {
        return view('auth.registration');
    }

    public function postLogin(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'password' => 'required',
        ]);

        $credentials = $request->only('name','password');
        if (Auth::attempt($credentials))
        {
            return redirect()->intended('dashboard')
                        ->withSuccess('You have successfully loggedin');
        }

        return redirect('login')->withSuccess('You have enterred invalid credentials');
    }

    public function postRegistration(Request $request)
    {
        $request->validate([
            'name' => 'required',
            // 'birthdate' => 'required',
            'email' => 'required|email|unique:users',
            'password' => 'required|min:6',
        ]);

        $data = $request->all();
        $check = $this->create($data);

        return redirect('dashboard')->withSuccess('You have successfully registered !');
    }

    public function dashboard()
    {
        if(Auth::check()){
            return view('dashboard');
        }

        return redirect('login')->withSuccess("You don't have any access");
    }

    public function create(array $data)
    {
        return User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => Hash::make($data['password'])
        ]);
    }

    public function logout()
    {
        Session::flush();
        Auth::logout();

        return Redirect('login');
    }

}



    //
    // public function index()
    // {
    //     return view('add_user');
    // }

    // public function store(Request $request)
    // {
    //     $user = new User;
    //     $user->name = $request->name;
    //     $user->password = Hash::make($request->password);
    //     $user->confirm_password = Hash::make($request->confirm_password);
    //     $user->email = $request->email;
    //     $user->remember_token = Str::random(10);
    //     $user->save();
    //     return redirect('add_user')->with('status', 'You have successfully subscribed');
    // }

    // public function get_users(){
    //     // $users = DB::table('users')->select('id','name','email')->get();
    //     return User::all();
    // }

    // public function login_redirection(){
    //     return view('auth.login');
    // }

    // public function login(Request $request){

    //     $request->validate([
    //         'name' => 'required',
    //         'password' => 'required'
    //     ]);

    //     $credentials = $request->only('name', 'password');
    //     if (Auth::attempt($credentials)) {
    //         return redirect()->intented('dashboard')
    //                         ->withSucess('Signed in');
    //     }

    //     return redirect('login_user')->withSuccess('Login details are not valid');
    // }