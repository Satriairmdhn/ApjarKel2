<?php

use Illuminate\Support\Facades\Route;
//use App\Http\Controllers\UserController;

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

Route::get('/', function () {
    return view('admin-home');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

/**
 * User Administration
 */
//Login-as
Route::get('/user/admin/login-as', [App\Http\Controllers\UserController::class, 'loginAs_Admin'])->name('apjar.user.admin.login-as');
Route::get('/user/refresh=login', [App\Http\Controllers\UserController::class, 'refreshLogin_User'])->name('apjar.user.refresh-login');
Route::get('/user/admin/assign-role', [App\Http\Controllers\UserController::class, 'assignRole_Admin'])->name('apjar.user.admin.assign-role');

