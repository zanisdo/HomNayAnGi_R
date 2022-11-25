@extends('layouts.app')

@section('body')
    <div class="container flex-grow-1 align-items-stretch">
        <div class="row align-items-center flex-grow-1">
            <div class="col">
                <h1 style="font-family: serif; font-weight: bold" class="display-1">Welcome</h1>
                <p style="font-size: 25px">Can't decide what to eat? <br>
                    We've got you covered.</p>
                    @guest
                <a href="{{ route('login') }}" class="btn btn-outline-dark btn-lg">Explore Now</a>
                    @else
                <a href="{{ route('food') }}" class="btn btn-outline-dark btn-lg">Explore Now</a>
                    @endguest
            </div>
            <img class="p-5" style="width: 50%"
                src="https://cdn.discordapp.com/attachments/991705612641640478/1045626093090111528/Group_1.png"
                alt="image of different foos">
        </div>
    </div>
@endsection
