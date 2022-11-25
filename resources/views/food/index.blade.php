@extends('layouts.app')
@section('body')
    <div class="container mt-5 gap-5">
        <h1>All food</h1>
        {{-- card list --}}
        <div class="row gx-0 gap-5 gy-5">
            {{-- CARD TEMPLATE --}}
            {{-- <div class="col card" style="width: 18rem;">
                <img class="card-img-top"
                    src="https://cdn.discordapp.com/attachments/991705612641640478/1045629661956276225/khobo.jpg"
                    alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">`Name`</h5>
                    <p class="card-text">`Description`</p>
                    <div class="button-group d-flex justify-content-around">
                        <button class="custom-button love-btn"><i class="fa-solid fa-star"></i></button>
                        <button class="custom-button hate-btn"><i class="fa-solid fa-heart-crack"></i></button>
                        <button class="custom-button already-ate-btn"><i class="fa-solid fa-check"></i></button>
                    </div>
                </div>
            </div> --}}

        </div>

    </div>
@endsection
