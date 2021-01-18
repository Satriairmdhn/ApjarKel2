@extends('adminlte::page')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">

                <div class="card-header">
                    <h3><b>Edit Profile</b></h3>
                </div>
                <div class="card-body">
                    @foreach($apjar_faculty as $m)
                        <form action="/Tugas/data/update" method="post" class="needs-validation" novalidate>
                          {{ csrf_field() }}
                            <input type="hidden" name="id" value="{{$m->id}}"> <br>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="NIP">NIP</label>
                                        <input type="text" class="form-control" required="required" value="{{ $m->nip}}" name="nip">
                                        <div class="invalid-feedback">
                                            Please input NIP
                                        </div>
                                        <div class="valid-feedback">
                                          Data updated!
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="front_title">Front Title</label>
                                        <input type="text" class="form-control" required="not-required" value="{{ $m->front_title}}" name="front_title">
                                        <div class="invalid-feedback">
                                            Please input front title
                                          </div>
                                          <div class="valid-feedback">
                                            Data updated!
                                          </div>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="rear_title">Rear Title</label>
                                        <input type="text" class="form-control" required="required" value="{{ $m->rear_title}}" name="rear_title">
                                        <div class="invalid-feedback">
                                            Please input rear title.
                                          </div>
                                          <div class="valid-feedback">
                                            Data updated!
                                          </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="first_name">First Name</label>
                                        <input type="text" class="form-control" required="required" value="{{ $m->first_name}}" name="first_name">
                                        <div class="invalid-feedback">
                                            Please insert your first name.
                                          </div>
                                          <div class="valid-feedback">
                                            Data Updated!
                                          </div>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="last_name">Last Name</label>
                                        <input type="text" class="form-control" required="required" value="{{ $m->last_name}}" name="last_name">
                                        <div class="invalid-feedback">
                                            Please insert your last name.
                                          </div>
                                          <div class="valid-feedback">
                                            Data Updated!
                                          </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-5">
                                    <div class="form-group">
                                        <label for="specialization">Academic Specialization</label>
                                        <select class="form-control" required="required" value="{{ $m->specialization}}" name="specialization">
                                            <option selected disabled value="">Select Specialization</option>
                                            <option value="1">ELIND</option>
                                            <option value="2">TTE</option>
                                            <option value="3">ELKOM</option>
                                        </select>
                                        <div class="invalid-feedback">
                                            Please select a valid specialization.
                                          </div>
                                          <div class="valid-feedback">
                                            Data Updated!
                                          </div>
                                    </div>
                                </div>
                                
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="phone">Phone Number</label>
                                        <input type="text" class="form-control" required="not-required" value="{{ $m->phone}}" name="phone">
                                        <div class="invalid-feedback">
                                            Please insert your phone number.
                                          </div>
                                          <div class="valid-feedback">
                                            Data Updated!
                                          </div>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="email">Email</label>
                                        <input type="email" class="form-control" required="not-required" value="{{ $m->email}}" name="email">
                                        <div class="invalid-feedback">
                                            Please insert a valid email.
                                          </div>
                                          <div class="valid-feedback">
                                            Data Updated!
                                          </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="form-check">
                                  <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
                                  <label class="form-check-label" for="invalidCheck">
                                    Agree to terms and conditions
                                  </label>
                                  <div class="invalid-feedback">
                                    You must agree before submitting.
                                  </div>
                                </div>
                              </div>
                            <button type="submit" class="btn btn-primary">Update</button>  <a class="btn btn-primary" href="/Tugas/data" role="button">Kembali</a>
                        </form>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

<script>
    // Example starter JavaScript for disabling form submissions if there are invalid fields
    (function() {
      'use strict';
      window.addEventListener('load', function() {
        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        var forms = document.getElementsByClassName('needs-validation');
        // Loop over them and prevent submission
        var validation = Array.prototype.filter.call(forms, function(form) {
          form.addEventListener('submit', function(event) {
            if (form.checkValidity() === false) {
              event.preventDefault();
              event.stopPropagation();
            }
            form.classList.add('was-validated');
          }, false);
        });
      }, false);
    })();
  </script>