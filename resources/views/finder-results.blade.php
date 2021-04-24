
@extends('layouts.app', ['headerPos'=> 'sticky-top'])
@section('content')
    
<!-- header banner start  -->
<section id="header-banner" class="w-100 overflow-hidden">
    <div class="row">
        <div class="col-12 position-relative">
            <img src="assets/img/contact-us-banner.png" alt="" class="img-fluid">
            <div class="overlay-shadow-yellow"></div>
            <div class="container text-center text-md-left position-absolute place-top-left place-md-center w-md-75">
                <div class="row">
                    <div class="col">
                        <h1 class="text-white">Find Your Perfect Cup</h1>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- header banner end  -->
<!-- partners section start  -->
<div id="modal-body" class="w-md-75 p-3 mx-auto mt-lg-n5 bg-white z-100 position-relative border border-gray">
    <div class="row p-5 justify-content-center">
        <div class="col-md-5 text-center">
            <h2>{{$product->title}}</h2>
        </div>
    </div>
    <div class="row justify-content-center">
        <div class="col-auto">
            <div class="container">
                <h3 class="text-capitalize text-darkorange text-center">Quality is what you seek! Quality time, quality products and quality treats! </h3>
                <h4 class="text-center">We recommend {{$product->title}}, delicious coffee and
                    turns your coffee break into a truly special moment in the day</h4>
            </div>
        </div>
    </div>

    <div class="row justify-content-center mt-4">
        <div class="col-6">
            <div class="row justify-content-end">
                <div class="col-auto">
                    share your results <a href="#" class="btn btn-darkorange rounded-circle "><i class="fa fa-share-alt"></i></a>
                </div>
            </div>
            <div class="row justify-content-center">
                    <a href="assets/img/ginger.png">
                    <div class="col-12 bg-light-gray p-5">

                        <img src="{{!empty($product->img) ? asset('storage/'. $product->img) : asset('assets/img/ginger.png')}}" alt="Not Found" class="img-fluid">
                    </div>
                </a>
                </div>
            </div>
    </div>

</div>
@endsection