<?php

namespace App\Http\Controllers\ArSys;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Auth;
use App\Models\ArSys\Faculty;

class ArSysController extends Controller
{


    /**
     * Display a listing of the resource.
     * @return Renderable
     */
    public function index()
    {
        return view('neoarsys::index');
    }

    public function switch()
    {

        $user = User::where('sso_username', cas()->user())->get();
        if ($user->isEmpty()){
            $user = User::create([
                'name' => cas()->user(),
                'sso_username' => cas()->user()
            ]);

            if (strlen(cas()->user()) > 9){
                $user->attachRole('admin');
                //$user->attachRole('faculty');
            }else{
                $user->attachRole('student');
            }
        }


        $user = User::where('sso_username', cas()->user())->firstorfail();
        Auth::login($user);

        return redirect()->route('arsys.home');

    }

    public function home(){

        $user = Auth::user();
        //dd($user->role);
        //return view ('neoarsys::home-faculty');

        if ($user->hasRole('student')){
           return redirect()->route('arsys.user.student');

        }else{
            return redirect()->route('arsys.user.faculty');
        }
    }

}
