<?php

namespace App\Http\Livewire\User\Admin;

use Livewire\Component;
use Livewire\WithPagination;

use Auth;
use App\Models\User;

class LoginAs extends Component
{
    public $search;
    use WithPagination;
    protected $paginationTheme = 'bootstrap';

    public function render()
    {

        $users = User::orderBy('name', 'ASC')->paginate(10);

        if($this->search != null){
            $users = User::where('name','like', '%'.$this->search.'%')

            ->orWhereHas('faculty', function($query){
                $query->where('first_name','like', '%'.$this->search.'%');
            })
            ->orWhereHas('student', function($query){
                $query->where('first_name','like', '%'.$this->search.'%');
            })
            ->orderBy('name', 'ASC')
            ->paginate(10);
        }

        return view('livewire.user.admin.login-as', compact('users'));
    }

    public function loginAs($user_id){
        //$user = User::where('id', $user_id)->first();

        $user = User::where('id', $user_id)->firstorfail();
        Auth::login($user);
        toast('Login as '.$user->name.'-'.$user->roles->first()->display_name.'ssuccess','success');
        return redirect('/');

    }


}

