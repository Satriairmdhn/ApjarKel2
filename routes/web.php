<?php

use Illuminate\Support\Facades\Route;
//use App\Http\Controllers\UserController;

use App\Http\Controllers\ArSys\ArSysController;
use App\Http\Controllers\ArSys\UserController;
use App\Http\Controllers\Tugas\ProfileController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [ArSysController::class, 'switch'])->name('arsys.switch')->middleware('cas.auth');
/*Route::get('/', function () {
    return view('admin-home');
});*/

Auth::routes();

Route::get('/home', [ArSysController::class, 'home'])->name('arsys.home');



/**
 * Redirect from Switch to User
 */

Route::get('/user/student', [UserController::class, 'student'])->name('arsys.user.student');
Route::get('/user/faculty', [UserController::class, 'faculty'])->name('arsys.user.faculty');

/**
 * User Administration
 */
//Login-as
Route::get('/user/admin/login-as', [UserController::class, 'loginAs_Admin'])->name('apjar.user.admin.login-as');
Route::get('/user/refresh=login', [UserController::class, 'refreshLogin_User'])->name('apjar.user.refresh-login');
Route::get('/user/admin/assign-role', [UserController::class, 'assignRole_Admin'])->name('apjar.user.admin.assign-role');

//CRUD
Route::get('/Tugas',[ProfileController::class, 'index'])->name('Tugas.profile.student');
Route::get('/Tugas/store',[ProfileController::class, 'store']);
Route::post('/Tugas/store',[ProfileController::class, 'store']);
Route::get('/Tugas/id',[ProfileController::class, 'id']);

Route::get('/Tugas/data',[ProfileController::class, 'data'])->name('Tugas.profile.student.data');
Route::get('/Tugas/data/edit/{id}',[ProfileController::class, 'edit'])->name('Tugas.profile.student.edit');
Route::post('/Tugas/data/update',[ProfileController::class, 'update']);
Route::get('/Tugas/data/update',[ProfileController::class, 'update']);

Route::get('/Tugas/data/delete/{id}',[ProfileController::class, 'delete'])->name('Tugas.profile.student.delete');