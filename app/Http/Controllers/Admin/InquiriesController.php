<?php

namespace App\Http\Controllers\Admin;

use Auth;
use App\User;
use App\Enquire;

use Carbon\Carbon;
use App\Http\Requests;
use Illuminate\Http\Request;
use Session;
use Intervention\Image\Facades\Image; 
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\App;

class InquiriesController extends MainAdminController
{
    public function __construct()
    {
        if (\Illuminate\Support\Facades\Session::has('n_language')) {
            App::setLocale(Session::get('n_language'));
        }
        $this->middleware('auth');

		
		 parent::__construct();
         
    }
    public function inquirieslist()
    {  
    	if(Auth::User()->usertype!="Admin") 
    	{
    		$user_id=Auth::user()->id;
    		
			$inquirieslist = Enquire::where('agent_id',$user_id)->orderBy('id')->get();
		}
		else
		{
			$inquirieslist = Enquire::orderBy('id')->get();
		}
    	
		  
        return view('admin.pages.inquiries',compact('inquirieslist'));
    } 
	 
    
    public function delete($id)
    {
    	 
        $inquire = Enquire::findOrFail($id);
         
		 
		$inquire->delete();
		
        \Session::flash('flash_message', 'Deleted');

        return redirect()->back();

    }
      
    	
}
