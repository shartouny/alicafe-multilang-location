@extends('layouts.app', ['headerPos' => 'sticky-top'])
@section('content')
    
<div class="container my-5">
    <h2 class="text-black-50 pt-4 m-0 text-capitalize">Whats's New</h2>
</div>
<div id="news-slider" class="carousel slide header-slider py-5" data-ride="carousel" data-interval="6600">
    <div class=" carousel-inner">
        @php
            $i = 0 
        @endphp
        @foreach ($news as $new)
            @if ($new->slider)
                <div class="carousel-item  {{$i == 0 ? 'active' : ''}}">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-7 animate__animated animate__fadeInRight">
                                <img src="{{isset($new->img) && !empty($new->img) ? asset('storage/'.$new->img) : asset('assets/img/owl-1.png')}}" alt="{{$new->title}}">
                            </div>
                            <div class="col-lg-5 px-lg-0 py-lg-5 content-right animated animate__animated animate__fadeInLeft">
                                <div class="container bg-white h-100 ml-lg-n5 p-0 ">
                                    <div class="row h-100">
                                        <div class="col px-5 py-4 animate__animated animate__zoomIn animate__delay-1s">
                                            <div class="row h-100">
                                                <div class="col-12 my-auto">
                                                    <span class="date">{{!empty($new->date) ? $new->formatDate() : ''}}</span>
                                                    <h4 class="text-capitalize">
                                                        {{$new->title}}
                                                    </h4>
                                                    <p>{!!$new->limit(20)!!}</p>
                                                    <a href="{{route('news.show' , $new->id)}}" class="btn btn-outline-default mt-4">{{__('read more')}}</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                @php
                    $i++
                @endphp
            @endif
        @endforeach
    </div>
    <ol class="carousel-indicators">
        @for ($j = 0; $j < $i; $j++)
            <li data-target="#news-slider" data-slide-to="{{$j}}" class="{{$j == 0 ? 'active' :''}}"></li>
        @endfor
    </ol>
    <a class="carousel-control-prev w-25" href="#headerslider" role="button" data-slide="prev"></a>
    <a class="carousel-control-next" href="#headerslider" role="button" data-slide="next"></a>
</div>
<!-- header slider section end  -->
<!-- intro section start  -->
<section id="previousPromotions">
    <div class="container my-5">
        <div class="row">
            <div class="col">
                <h2 class="text-black-50 pt-4 m-0 text-capitalize">previous promotions</h2>
            </div>
        </div>
        <div class="row my-4">
            @foreach ($news as $new)
                @if (!$new->slider)
                    <div class="col-md-6">
                        <a href="{{route('news.show' , $new->id)}}">
                            <div class="row">
                                <div class="col-12">
                                    <div class=" overflow-hidden">
                                        <img src="{{isset($new->img) && !empty($new->img) ? asset('storage/'.$new->img) : asset('assets/img/owl-1.png')}}" class="img-fluid" alt="{{$new->title}}">
                                    </div>
                                </div>
                            </div>
                        </a>
                        <div class="row">
                            <div class="col-12">
                                <p class="date my-2">{{$new->date}}</p>
                                <h6>{{$new->title}}</h6>
                            </div>
                        </div>
                    </div>
                @endif
            @endforeach
            
        </div>    
        <div class="row">
            <div class="col bg-light-gray text-center p-2">
                <a href="#" class="text-gray">LOAD MORE</a>
            </div>
        </div>
    </div>
</section>

<section id="social-feeds">
    <div class="container py-5">
        <div class="row">
            <div class="col text-center">
                <h2>stay tuned, follow alicafe </h2>
            </div>
        </div>
        <div class="row p-3">
            @foreach ($socials as $v)
                <div class="col-md-3 col-6 p-0">
                    <a href="{{$v->formatURL()}}" target="blank">
                        <div class="overflow-hidden position-relative h-100">
                            <img src="{{asset('storage/'. $v->img)}}" alt="not found" class="img-fluid">
                            <div class="position-absolute bottom-0 left-0 m-3">
                                <i class="fab {{$v->icon}}"></i>
                            </div>
                        </div>
                    </a>
                </div>
            @endforeach
        </div>
    </div>
</section>


@endsection

