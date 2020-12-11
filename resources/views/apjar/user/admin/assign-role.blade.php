@extends('adminlte::page')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">

                <div class="card-header">
                    <b>User Administration</b> | Assign role
                </div>
                <div class="card-body">
                    @livewire('apjar.user.admin.assign-role')
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
