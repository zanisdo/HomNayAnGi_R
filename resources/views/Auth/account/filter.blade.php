@extends('layouts.app')
@section('body')
    <div class="container d-flex flex-column flex-grow-1">
        <div class="wrapper d-flex flex-column flex-grow-1">
            <h1>Filter</h1>
            <div class="content flex-row">
                <div class="filter-area flex-grow-1">
                    <h3>Filter</h3>
                    {{-- FOR TESTING PURPOSES --}}
                    <div class="checkbox-area form-check">
                        <input class="form-check-input" type="checkbox" id="banh-trang" name="banh-trang">
                        <label class="form-check-label" for="banh-trang">Bánh tráng</label>
                    </div>
                    <div class="checkbox-area form-check">
                        <input class="form-check-input" type="checkbox" id="kho" name="kho">
                        <label class="form-check-label" for="kho">Khô</label>
                    </div>
                    <div class="checkbox-area form-check">
                        <input class="form-check-input" type="checkbox" id="mon-nuoc" name="mon-nuoc">
                        <label class="form-check-label" for="mon-nuoc">Món nước</label>
                    </div>
                    <div class="checkbox-area form-check">
                        <input class="form-check-input" type="checkbox" id="keo" name="keo">
                        <label class="form-check-label" for="keo">Kẹo và mứt</label>
                    </div>
                    <hr>
                    <h3>Hide</h3>
                    <div class="checkbox-area form-check">
                        <input class="form-check-input" type="checkbox" id="hide-favorites" name="hide-favorites">
                        <label class="form-check-label" for="hide-favorites">My Favorites</label>
                    </div>
                    <div class="checkbox-area form-check">
                        <input class="form-check-input" type="checkbox" id="hide-ate-dish" name="hide-ate-dish">
                        <label class="form-check-label" for="hide-ate-dish">Already ate dishes</label>
                    </div>
                    <div class="checkbox-area form-check">
                        <input class="form-check-input" type="checkbox" id="hide-dislike" name="hide-dislike">
                        <label class="form-check-label" for="hide-dislike">Dislikes</label>
                    </div>
                    <hr>
                    <button class="button-confirm btn btn-warning">Confirm</button>
                </div>
                <div class="display-content flex-grow-1">
                    {{-- CARDS FOR TESTING PURPOSES --}}
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
        </div>
    </div>
@endsection
