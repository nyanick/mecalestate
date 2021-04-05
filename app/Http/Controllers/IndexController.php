<?php

namespace App\Http\Controllers;

use App\Partners;
use App\Properties;
use App\Subscriber;
use App\Testimonials;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Session;

class IndexController extends Controller
{


    public function __construct()
    {
        if (Session::has('n_language')) {
            App::setLocale(Session::get('n_language'));
        }
    }

    public function index()
    {

        if (!$this->alreadyInstalled()) {
            return redirect('install');
        }

        $locale = Input::get('locale');
        if (!empty($locale)) {
            if (Session::has('n_language')) {
                Session::forget('n_language');
            }
            Session::put('n_language', $locale, 60);
            return redirect()->back();
        }
        $propertieslist = Properties::orderBy('id', 'desc')->take(8)->get();

        $testimonials = Testimonials::orderBy('id', 'desc')->get();

        $partners = Partners::orderBy('id', 'desc')->get();

        return view('pages.index', compact('propertieslist', 'testimonials', 'partners'));
    }

    public function subscribe(Request $request)
    {

        $data = \Input::except(array('_token'));

        $inputs = $request->all();

        $rule = array(
            'email' => 'required|email|max:75'
        );

        $validator = \Validator::make($data, $rule);

        if ($validator->fails()) {
            echo '<p style="color: #db2424;font-size: 20px;">The email field is required.</p>';
            exit;
        }

        $subscriber = new Subscriber;

        $subscriber->email = $inputs['email'];
        $subscriber->ip = $_SERVER['REMOTE_ADDR'];


        $subscriber->save();

        echo '<p style="color: #189e26;font-size: 20px;">Successfully subscribe</p>';
        exit;

    }

    /**
     * If application is already installed.
     *
     * @return bool
     */
    public function alreadyInstalled()
    {
        return file_exists(storage_path('installed'));
    }

}
