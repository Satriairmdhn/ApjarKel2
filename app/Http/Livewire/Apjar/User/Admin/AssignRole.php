<?php

namespace App\Http\Livewire\Apjar\User\Admin;

use Livewire\Component;
use App\Models\User;
use App\Models\Apjar\Role;
use App\Models\Apjar\Faculty;
use Livewire\WithPagination;

class AssignRole extends Component
{
    public $search;
    use WithPagination;
    protected $paginationTheme = 'bootstrap';
    public $faculty;
    public $userID;
    public $modalAssignRole = null;
    public $facultyID;
    public function render()
    {
        $users = User::orderBy('name', 'ASC')->paginate(10);

        $roles = Role::all();

        if($this->search != null){
            $users = User::where('name','like', '%'.$this->search.'%')

            ->orWhereHas('faculty', function($query){
                $query->where('first_name','like', '%'.$this->search.'%');
            })

            ->orderBy('name', 'ASC')
            ->paginate(10);
        }

        if($this->modalAssignRole){
            $this->faculty = Faculty::where('id', $this->facultyID)->first();
        }

        return view('livewire.apjar.user.admin.assign-role', compact('users', 'roles'));
    }

    public function assignRole($faculty_id, $user_id){
        $this->facultyID = $faculty_id;
        $this->modalAssignRole = true;
        $this->userID = $user_id;
    }

    public function addRole($role_id){
        $role = Role::where('id', $role_id)->first();
        $user = User::find($this->userID);

        $user->attachRole($role->name);
    }

    public function removeRole($role_id){
        $role = Role::where('id', $role_id)->first();
        $user = User::find($this->userID);

        $user->detachRole($role->name);
    }

}
