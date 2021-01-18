@extends('adminlte::page')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">

                <div class="card-header">
                    <h4>Faculty | Data Administration |  Table Of Users Data </h4>
                </div>
                <div class="card row">
                    <a class="btn btn-primary" href="/Tugas/" role="button"><i class="fa fa-user fa-user-plus" style ="color:white" aria-hidden="true"></i> Create New Data</a>
                </div>
                <div class="card-body">
                    <table class="table table-hover text-center">
                        <thead>
                            <tr>
                                <th width="5%">No.</th>
                                <th width="15%">NIP</th>
                                <th width="25%">Nama Lengkap</th>
                                <th width="10%">Specialization</th>
                                <th width="20%">Nomor Telepon</th>
                                <th width="20%">Email</th>
                                <th width="10%">Opsi</th>
                            </tr>
                        </thead>
                        <body>
                            @php($counter = 0)
                            @foreach($apjar_faculty as $m)
                              <tr>
                                <td>{{++$counter}}</td> 
                                <td>{{ $m->nip}}</td>
                                <td>{{ $m->front_title}}{{ $m->first_name }}{{ $m->last_name }}{{ $m->rear_title }}</td>
                                <td>{{ $m->specialization }}</td>
                                <td>{{ $m->phone }}</td>
                                <td>{{ $m->email }}</td>
                                <td>
                                  <a class="btn btn-warning btn-sm" href="/Tugas/data/edit/{{$m->id}}" role="button"><i class="fa fa-user fa-user-plus" style ="color:white" aria-hidden="true"></i>Edit</a>
                                  <br>
                                  <a class="btn btn-danger btn-sm" href="/Tugas/data/delete/{{$m->id}}" role="button"><i class="fa fa-user fa-user-minus" style ="color:white" aria-hidden="true"></i>Delete</a>   
                                </td>
                              </tr>
                            @endforeach
                        </body>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection