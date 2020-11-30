@extends('adminlte::page')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">

                <div class="card-header">
                    <b>User Administration</b> | Login As
                </div>
                <div class="card-body">
                    @livewire('user.admin.login-as')
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
