<div>
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
                    <th width="25%">SSO</th>
                    <th width="40%">Identity</th>

                    <th class="text-right" width="15%">Action</th>
                </tr>
            </thead>
            <tbody id="users-table">
                @php($counter = 0)
               @forelse ($users as $user)
                    <tr>
                        <td> {{++$counter}} </td>
                        <td>{{$user->name}}</td>
                        <td>
                            {{$user->sso_username}}
                        </td>
                        <td>
                            @if(strlen($user->sso_username) < 9 && $user->student != null)
                            {{$user->student->first_name}} {{$user->student->last_name}}
                            @elseif($user->faculty != null)
                            {{$user->faculty->first_name}} {{$user->faculty->last_name}}
                            @endif

                        </td>


                        <td class="text-right">
                            <button wire:click="loginAs({{ $user->id }})" class="btn btn-sm btn-warning"><i class="fa fa-user fa-xs" style ="color:black" aria-hidden="true"></i> Login As</button>
                        </td>
                    </tr>
               @empty
                    No Data
               @endforelse
            </tbody>
        </table>
    </div>
    {{$users->links()}}
</div>
