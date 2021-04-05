<?php

namespace App\Http\Controllers;

use App\User;
 
 

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;

class AgentsController extends Controller
{
    public function __construct()
    {
        if (Session::has('n_language')) {
            App::setLocale(Session::get('n_language'));
        }
    }

    public function index()
    {  
		$agents = User::where('usertype','Agents')->orderBy('id', 'desc')->paginate(9);;
		 		   
        return view('pages.agents',compact('agents'));
    }
    
      
}
