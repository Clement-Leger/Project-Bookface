<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class SearchBarController extends Controller
{
    // CLEMENT
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $users = User::all();
        return view('test', compact('users'));
    }

    public function search()
    {
        $search = $_GET['query'];
        $users = User::where('name','LIKE', '%'.$search.'%')->get();

        return view('search', compact('users'));
    } // créer la base de données pour stocker les recherches en fonction de l'utilisateur !!!
}
