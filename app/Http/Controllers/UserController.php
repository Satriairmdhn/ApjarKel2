<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class UserController extends Controller
{
    public function loginAs_Admin(){
        return view('user.admin.login-as');
    }
}
