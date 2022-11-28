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
                    <label class="form-check-label" for="keo">Kẹo</label>
                </div>
                <button class="button-confirm btn btn-warning">Confirm</button>
            </div>
            <div class="display-content flex-grow-1">
            </div>
        </div>
    </div>
</div>
@endsection
