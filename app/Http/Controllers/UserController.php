<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class UserController extends Controller
{
    public function loginAs_Admin(){
        return view('user.admin.login-as');
    }

    public function refreshLogin_User(){
        //$request->session()->flush();
        \Session::flush();
        return redirect('/');
    }

    public function assignRole_Admin(){
       return view('apjar.user.admin.assign-role');
    }
}
