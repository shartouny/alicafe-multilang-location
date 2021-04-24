
@extends('layouts.app', ['headerPos' => 'sticky-top'])
@section('content')
    
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
            <h2>Find out the best Alicafé to indulge in
                based on your preferences!</h2>
        </div>
    </div>
    @php $i=0 @endphp
    @foreach ($questions as $question)
        <div class="question" style="{{$i!=0 ? 'display: none;' : ''}}">
            <div class="row justify-content-center">
                <div class="col-auto">
                    <div class="container">
                        <h3 class="text-uppercase text-darkorange">{{$question->question}}</h3>
                    </div>
                </div>
            </div>
            <div class="p-3">
                <div class="row answer-area">
                </div>
            </div>
            <div class="row core">
                @foreach ($question->children() as $choice)
                    <div class="col-md-3 position-relative">
                        <a href="{{$i+1 == count($questions) ? route('finder.show', ['finder' => $id, 'lang' => app()->getLocale()]) : '#'}}" class="answer">
                            <div class="overflow-hidden">
                                <img src="{{!empty($choice->img) ? asset('storage/'.$choice->img) : asset('assets/img/empty-img.jpg')}}" alt="not found" class="img-fluid">
                                <div class="position-absolute place-md-center">
                                    <p class="font-roboto-regular text-white">{{$choice->answer}}</p>
                                </div>
                            </div>
                        </a>
                    </div>
                @endforeach
            </div>
        </div>
        @php $i++ @endphp
        
    @endforeach
    <div class="row justify-content-center my-3">
        <div class="col-2 d-flex justify-content-around">
            @for ($j = 1; $j < count($questions)+1; $j++)
                <div class="btn rounded-circle {{ $j==1 ? 'btn-darkorange' : 'btn-outline-darkorange'}} text-white">{{$j}}</div>
            @endfor
            
        </div>
    </div>
</div>
@endsection
