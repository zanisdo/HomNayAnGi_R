@extends('layouts.app')
@section('body')
    <div class="container">
        <div class="user-account">
            <h1>Account Settings</h1>
            <h3>Account name: </h3>
            <h3>Account email: </h3>
            <h3>Account mobile: </h3>
        </div>
        <div class="update-account">
            <h1>Update your account</h1>
            <form>
                <div class="form-group">
                    <label for="email">Email address</label>
                    <input type="email" class="form-control" id="email" aria-describedby="emailHelp"
                        placeholder="Enter email">
                </div>
                <div class="form-group">
                    <label for="mobile">Mobile</label>
                    <input type="text" class="form-control" id="mobile" aria-describedby="emailHelp"
                        placeholder="Enter mobile">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" class="form-control" id="password" placeholder="Password">
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
            <a href="{{ route('favoritesettings') }}" class="btn btn-outline-dark">Favorite Settings</a>
        </div>

    </div>
@endsection
