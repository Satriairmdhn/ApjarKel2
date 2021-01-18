@extends('adminlte::page')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">

                <div class="card-header">
                    <h4> Faculty | Data Administration </h4>
                </div>
                <div class="card-body">
                    <form action="/Tugas/store" class="needs-validation" novalidate>
                      @csrf
                      <div class="row">
                        <div class="col-md-4">
                          <div class="form-group">
                            <label for="nip">NIP</label>
                            <input type="text" class="form-control" name="nip" id="nip" required>
                            <div class="invalid-feedback">
                                Please input NIP
                            </div>
                            <div class="valid-feedback">
                                Data valid!
                            </div>
                          </div>
                        </div>
  
                        <div class="col-md-4">
                          <div class="form-group">
                            <label for="front_title">Front title</label>
                            <input type="text" class="form-control" name="front_title" id="front_title" required>
                            <div class="invalid-feedback">
                              Please select a valid Front title.
                            </div>
                            <div class="valid-feedback">
                              Data valid!
                            </div>
                          </div>
                        </div>
  
                        <div class="col-md-4">
                          <div class="form-group">
                            <label for="rear_title">Rear title</label>
                            <input type="text" class="form-control" name="rear_title" id="rear_title" required>
                            <div class="invalid-feedback">
                              Please insert a valid Rear title.
                            </div>
                            <div class="valid-feedback">
                              Data valid!
                            </div>
                          </div>
                        </div>
                      </div>
  
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="first_name">First Name</label>
                            <input type="text" class="form-control" name="first_name" id="first_name" required>
                              <div class="invalid-feedback">
                                Please insert your first name.
                              </div>
                              <div class="valid-feedback">
                                Data valid!
                              </div>
                          </div>
                        </div>
  
                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="last_name">Last Name</label>
                            <input type="text" class="form-control" name="last_name" id="last_name" required>
                              <div class="invalid-feedback">
                                Please insert your last name.
                              </div>
                              <div class="valid-feedback">
                                Data valid!
                              </div>
                          </div>
                        </div>
                      </div>
  
                      <div class="row">
                        <div class="col-md-4">
                          <div class="form-group">
                            <label for="specialization">Academic Specialization</label>
                            <select class="form-control" id="specialization" name="specialization" required>
                              <option selected disabled value="">Select Specialization</option>
                              <option value="1">ELIND</option>
                              <option value="2">TTE</option>
                              <option value="3">ELKOM</option>
                            </select>
                              <div class="invalid-feedback">
                                Please select a valid specialization.
                              </div>
                              <div class="valid-feedback">
                                Data valid!
                              </div>
                          </div>
                        </div>
  
                        <div class="col-md-4">
                          <div class="form-group">
                            <label for="phone">Phone Number</label>
                            <input type="text" class="form-control" name="phone" id="phone" required>
                            <div class="invalid-feedback">
                              Please insert your phone number.
                            </div>
                            <div class="valid-feedback">
                              Data valid!
                            </div>
                          </div>
                        </div>
  
                        <div class="col-md-4">
                          <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" name="email" id="email" required>
                            <div class="invalid-feedback">
                              Please insert a valid email.
                            </div>
                            <div class="valid-feedback">
                              Data valid!
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
                      
                      <button class="btn btn-primary" type="submit">Create Data</button>
                      <a class="btn btn-primary" href="/Tugas/data" role="button">View Exiting Data</a>
                    </form>
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