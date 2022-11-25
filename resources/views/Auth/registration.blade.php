@extends('Auth.app')

@section('content')
<section class="vh-100" >
    <div class="container py-5 h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-8 col-lg-6 col-xl-5">
          <div class="card shadow-2-strong" style="border-radius: 1rem;">
            <div class="card-body p-5 text-center">



              <h3 class="mb-5">Sign up</h3>
              {{-- when method is POST then button type=submit. The POST method send data from this form to action --}}
                    <form action="{{ route('validate_registration') }}" method="POST">
                        @csrf
              <div class="form-outline mb-4">
                <input type="text" name="name" class="form-control form-control-lg" />
                        @if($errors->has('name'))
                            <span class="text-danger">{{ $errors->first('name') }}</span><br>
                        @endif
                <label class="form-label" >Name</label>
              </div>
              <div class="form-outline mb-4">
                <input type="text" name="mobile" class="form-control form-control-lg" />
                        @if($errors->has('mobile'))
                            <span class="text-danger">{{ $errors->first('mobile') }}</span><br>
                        @endif
                <label class="form-label" >Mobile</label>
              </div>
              <div class="form-outline mb-4">
                <input type="email" id="typeEmailX-2" name="email" class="form-control form-control-lg" />
                        @if($errors->has('email'))
                            <span class="text-danger">{{ $errors->first('email') }}</span><br>
                        @endif
                <label class="form-label" for="typeEmailX-2">Email</label>
              </div>
              <div class="form-outline mb-4">
                <input type="password" id="typePasswordX-2" name="password" class="form-control form-control-lg" />
                        @if($errors->has('password'))
                            <span class="text-danger">{{ $errors->first('password') }}</span><br>
                        @endif
                <label class="form-label" for="typePasswordX-2">Password</label>
              </div>

              <button class="btn btn-primary btn-lg btn-block" type="submit">Register</button>
                    </form>


            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
@endsection
