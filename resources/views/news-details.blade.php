@extends('layouts.app', ['headerPos' => 'sticky-top'])
@section('content')
    <div class="container my-5">
        <h2 class="text-black-50 pt-4 m-0 text-capitalize">{{__("What's new")}}</h2>
        <div id="modal-body" class="w-100 mx-auto bg-white z-100 position-relative border border-gray">
            <div class="row p-5">
                <div class="col-md-6">
                    <img src="{{config('app.url')}}/assets/img/owl-1.png" alt="" class="img-fluid">
                </div>
                <div class="col-md-6 news-content">
                    <div class="container bg-white h-100 ml-lg-n5 p-0 ">
                        <div class="row h-100">
                            <div class="col px-5 animate__animated animate__zoomIn animate__delay-1s">
                                <div class="row h-100">
                                    <div class="col-12 my-auto">
                                        <span class="date">{{$new->date}}</span>
                                        <h4 class="text-capitalize">
                                            {{$new->title}}
                                        </h4>
                                        <p class="text-justify">{!! $new->content !!}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr>
                </div>
            </div>
            <div class="row justify-content-end">
                <div class="col-auto m-3">
                    <button class="btn rounded-circle btn-darkorange"><i class="fa fa-share-alt"></i></button>
                </div>
            </div>
        </div>
    </div>

    <section class="container">
        <div class="" id="other-products" data-aos="fade-up">
            <div class="row justify-content-center">
                <div class="col-auto">
                    <h2 class="text-capitalize">{{__('other news')}}</h2>
                </div>
            </div>
            <div id="" class="owl-carousel owl-theme owl-carousel-4">
                @php $current = $new->id @endphp
                @foreach ($news as $new)
                    @if ($new->id != $current)
                        <div class="item">
                            <a href="{{route('news.show' , $new->id)}}">
                                <div class="row">
                                    <div class="col-12">
                                        <div class=" overflow-hidden">
                                            <img src="{{!empty($new->img)? asset('storage/'.$new->img) : asset('assets/img/owl-2.png')}}" alt="{{$new->title}}">
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <div class="row">
                                <div class="col-12">
                                    <p class="date my-2">{{$new->formatDate()}}</p>
                                    <h6 class="text-capitalize">{{$new->title}}</h6>
                                </div>
                            </div>
                        </div>
                    @endif
                @endforeach
            </div>
        </div>
    </section>
@endsection