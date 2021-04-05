<?php

namespace App\Http\Controllers\Admin;

use Auth;
use App\User;
use App\Properties;

use Carbon\Carbon;
use App\Http\Requests;
use Illuminate\Http\Request;
use Session;
use Intervention\Image\Facades\Image; 
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\App;

class FeaturedPropertiesController extends MainAdminController
{
    public function __construct()
    {
        if (\Illuminate\Support\Facades\Session::has('n_language')) {
            App::setLocale(Session::get('n_language'));
        }
        $this->middleware('auth');
		
		 parent::__construct();
         
    }
    public function propertieslist()
    {  
    	$propertieslist = Properties::where('featured_property','1')->orderBy('id')->get();
		  
        return view('admin.pages.featuredproperty',compact('propertieslist'));
    } 
	 
}
