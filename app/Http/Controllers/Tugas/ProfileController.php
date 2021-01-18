<?php

namespace App\Http\Controllers\Tugas;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ProfileController extends Controller
{
    public function index(){
        return view ('Tugas.index');
    }

   
    public function store(Request $request)
    {
        
        DB::table('apjar_faculty')->insert
        ([
            'nip' => $request->nip,
            'front_title' => $request->front_title,
            'rear_title' => $request->rear_title,
            'first_name' => $request->first_name,
            'last_name' => $request->last_name,
            'specialization' => $request->specialization,
            'phone' => $request->phone,
            'email' => $request->email
            ]);
            
            return redirect('/Tugas/data');
    }

    public function id()
    {
        return view('Tugas.id');
    }

    public function data()
    {
    	
        $apjar_faculty = DB::table('apjar_faculty')->get();
        
    	return view('Tugas.data',['apjar_faculty' => $apjar_faculty]);
    }

    public function edit($id)
    {
	
	$apjar_faculty = DB::table('apjar_faculty')->where('id',$id)->get();
	
	return view('Tugas.edit',['apjar_faculty' => $apjar_faculty]);
    }

    public function update(Request $request)
    {
            DB::table('apjar_faculty')->where('id',$request->id)->update([
            'nip' => $request->nip,
            'front_title' => $request->front_title,
            'rear_title' => $request->rear_title,
            'first_name' => $request->first_name,
            'last_name' => $request->last_name,
            'specialization' => $request->specialization,
            'phone' => $request->phone,
            'email' => $request->email
        ]);
        
        return redirect('Tugas/data');
    }

    public function delete($id)
    {
        DB::table('apjar_faculty')->where('id',$id)->delete();
        
        
        return redirect('Tugas/data');
    }
}