<div>
    @include('livewire.apjar.user.admin.modal.add-role-modal')
    <div class="row">
        <div class="col-md-3 offset-md-0">
            <input wire:model="search" type="text" class="form-control my-1" placeholder="Search firts_name">
        </div>
    </div>
    <div class="table-responsive users-table">
        <table class="table table-striped table-sm data-table">
            <thead class="thead">
                <tr>

                    <th width="5%">No</th>
                    <th width="20%">Username</th>
                    <th width="35%">Identity</th>
                    <th width="20%">Role</th>

                    <th class="text-right" width="20%">Action</th>
                </tr>
            </thead>
            <tbody id="users-table">
                @php($counter = 0)
               @forelse ($users as $user)
                    @if($user->faculty != null)
                        <tr>
                            <td> {{++$counter}} </td>
                            <td>{{$user->name}}</td>

                            <td>
                                {{$user->faculty->first_name}} {{$user->faculty->last_name}}
                            </td>

                            <td>

                                @foreach ($user->roles as $role)
                                    {{$role->display_name}}
                                    <br>
                                @endforeach
                            </td>

                            <td class="text-right">
                                <button wire:click="assignRole({{$user->faculty->id}}, {{$user->id}})" data-toggle="modal" data-target="#setRole" class="btn btn-xs btn-success"><i class="fa fa-user fa-user-plus" style ="color:black" aria-hidden="true"></i> Role</button>
                                <button wire:click="loginAs({{ $user->id }})" class="btn btn-xs btn-warning"><i class="fa fa-user fa-xs" style ="color:black" aria-hidden="true"></i> Login As</button>
                            </td>
                        </tr>
                    @endif
               @empty
                    No Data
               @endforelse
            </tbody>
        </table>
    </div>
    {{$users->links()}}
</div>
