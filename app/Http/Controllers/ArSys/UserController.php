<?php

namespace App\Http\Controllers\ArSys;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ArSys\Faculty;
use App\Models\ArSys\Student;
use Auth;
class UserController extends Controller
{

    public function student(){
        $user = Auth::user();
        $student = Student::where('user_id', $user->id)->get();
        if ($student->isEmpty())
            return redirect()->route('arsys.profile.student.create');
        return view ('arsys.student-home');
    }

    public function faculty(){
        $user = Auth::user();
        $faculty = Faculty::where('user_id', $user->id)->get();
        if ($faculty->isEmpty()){
            return view ('arsys.faculty-home');
            //return view ('neoarsys::profile.faculty.no-data');
        }else{
            return view ('arsys.faculty-home');
        }
    }


    public function loginAs_Admin(){
        return view('arsys.user.admin.login-as');
    }

    public function refreshLogin_User(){
        //$request->session()->flush();
        \Session::flush();
        return redirect('/');
    }

    public function assignRole_Admin(){
       return view('arsys.user.admin.assign-role');
    }
}
