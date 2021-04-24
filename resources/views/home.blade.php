@extends('layouts.app')
@section('content')
    <div id="headerslider" class="carousel slide header-slider" data-ride="carousel" data-interval="6600" data-pause="false">
        <ol class="carousel-indicators">
            @for ($i = 0; $i < count($sliders); $i++)
                <li data-target="#headerslider" data-slide-to="{{$i}}" class="{{$i == 0 ? 'active' :''}}"></li>
            @endfor
        </ol>
        <div class=" carousel-inner ">
            @php $i=0; @endphp
                @foreach ($sliders as $slider)
                    <div class="carousel-item {{ $i==0 ? 'active' : ''}}">
                    <img class="d-block w-100" src="{{!empty($slider->img) ? asset('storage/'. $slider->img) : asset('assets/img/banner1.jpg')}}" alt="First slide">
                    <div class="overlay-shadow"></div>
                    <div class="carousel-caption">
                        @if (isset($slider->text_position) && $slider->text_position == 'center')
                            <div class="container mt-n5">
                                <div class="row h-100 justify-content-center mt-n5">
                                    <div class="col-12 my-auto">
                                        @if (isset($slider->subtitle) && !empty($slider->subtitle))
                                            <h6 class="">{!!$slider->subtitle!!}</h6>
                                            <h4 class=""> {!!$slider->title!!} </h5>
                                        @else
                                            <h5 class="text-center">{!! $slider->title !!}</h5>
                                        @endif
                                        @if (isset($slider->button_text) && !empty($slider->button_text))
                                            <a href="{{$slider->button_link}}" class="btn btn-danger ">{{$slider->button_text}}</a>
                                        @endif
                                        @if (isset($slider->extra_imgs) && !empty($slider->extra_imgs))
                                            @php $extra_imgs = json_decode($slider->extra_imgs) ;  print_r($extra_imgs)@endphp
                                            <div class="row">
                                                @foreach ($extra_imgs as $img)
                                                    <div class="col col-md-1 col-xl-2 pr-0 ">
                                                        <a href="#"><img src="{{asset('storage/'.$img)}}" alt="" class="img-fluid"></a>
                                                    </div>
                                                @endforeach
                                            </div>
                                        @endif
                                    </div>
                                </div>
                            </div>
                        @else
                            <div class="container">
                                <div class="row h-100">
                                    <div class="col-md-6 my-auto">
                                        @if (isset($slider->subtitle) && !empty($slider->subtitle))
                                            <h6 class="">{!!$slider->subtitle!!}</h6>
                                            <h4 class=""> {!!$slider->title!!} </h5>
                                        @else
                                            <h5 class="">{!! $slider->title !!}</h5>
                                        @endif
                                        @if (isset($slider->button_text) && !empty($slider->button_text))
                                            <a href="{{$slider->button_link}}" class="btn btn-danger">{{$slider->button_text}}</a>
                                        @endif
                                        @if (isset($slider->extra_imgs) && !empty($slider->extra_imgs))
                                            @php $extra_imgs = json_decode($slider->extra_imgs) ; @endphp
                                            <div class="row">
                                                @foreach ($extra_imgs as $img)
                                                    <div class="col col-md-1 col-xl-2 pr-0 ">
                                                        <a href="#"><img src="{{asset('storage/'.$img)}}" alt="" class="img-fluid"></a>
                                                    </div>
                                                @endforeach
                                            </div>
                                        @endif
                                    </div>
                                </div>
                            </div>
                        @endif
                    </div>
                    <div class="timer-bar"></div>
                </div>
                @php $i++ @endphp
            @endforeach
        </div>
        <a class="carousel-control-prev w-auto ml-5" href="#headerslider" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="false"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next  w-auto mr-5" href="#headerslider" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="false"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <!-- header slider section end  -->
    <!-- intro section start  -->
    <div class=" p-md-5 p-3" id="whats-new" data-aos="fade-up">
        <div class="row justify-content-center">
            <div class="col-auto">
                <h2>{{__("what's new")}}</h2>
            </div>
        </div>
        <div id="" class="owl-carousel owl-theme owl-carousel-4">
            @foreach ($news as $new)
                <div class="item">
                    <a href="{{route('news.show', ['lang' => app()->getLocale() , 'news' => $new->id])}}">
                        <div class="row">
                            <div class="col-12">
                                <div class=" overflow-hidden">
                                    <img src="assets/img/owl-1.png" alt="ads">
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
            @endforeach
        </div>
    </div>

    <!-- intro section end  -->
    <!-- discover sec start  -->
    <section id="discover" class="mt-2" style="background-image:url('assets/img/banner-discover-1.png');">
        <div class="container h-100">
            <div class="row py-5 h-100">
                <div class="col-md-6 col-xl-6 py-5 my-auto">
                    <h6>Discover the perfect cup Matches
                        <br>your moments!
                    </h6>
                    <div class="mt-4 mt-xl-5">
                        <p>Find out the best Alicafé or Alitéa to indulge in <br>
                            based on your preferences!
                        </p>
                    </div>
                    <div class="row mt-5">
                        <div class="col-12">
                            <div class="row">
                                <div class="col-md-auto">
                                    <p>I'm up to:</p>
                                </div>
                                <div class="col-md-4 col-6">
                                    <a href="#" class="btn btn-outline-gray btn-block">coffee</a>
                                </div>
                                <div class="col-md-4 col-6">
                                    <a href="#" class="btn btn-outline-gray btn-block">tea</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- discover sec end  -->
    <!-- <hr class="d-block d-md-none"> -->
    <!-- range section start  -->
    <section id="range-sec" class="mt-5 py-5">
        <div class="container">
            <div class="row">
                @php  $i = 0 @endphp
                @foreach ($categories as $category)
                    @if ($category->isParent() && $i<=1)
                        <div class="col-md-6 mt-2 mt-md-0">
                            <a href="{{route('products.index', ['category' => $category->name, 'lang' => app()->getLocale()])}}">
                                <div class=" overflow-hidden">
                                    <img src="{{!empty($category->featured_img) ? asset('storage/'. $category->featured_img) : asset('assets/img/alicaf.png')}}" alt="alt" class="img-fluid w-100">
                                    <p class="position-absolute place-center mt-5 pt-md-3 pt-lg-5">{{__('view Full Range')}}</p>
                                </div>
                            </a>
                        </div>
                    @endif
                    @php $i++ @endphp
                @endforeach
            </div>
        </div>
    </section>
    <!-- range section end  -->
    <div class=" p-md-5 p-3" id="featured" data-aos="fade-up">
        <div class="row justify-content-center">
            <div class="col-auto">
                <h2>{{__('featured products')}}</h2>
            </div>
        </div>
        <div id="" class="owl-carousel owl-theme owl-carousel-4">
            @foreach ($products as $product)
                @if ($product->featured)
                    <div class="item">
                        <div class="row">
                            <div class="col h-100">
                                <a href="{{route('products.show', ['product' =>$product->id, 'lang'=> app()->getLocale()])}}">
                                    <div class="row h-100">
                                        <div class="col-12 h-100">
                                            <div class="overflow-hidden h-100 bg-white p-5">
                                                <div class="row h-100">
                                                    <div class="col d-inline-box mh-100 my-auto">
                                                        <img src="{{!empty($product->img)? asset('storage/'.$product->img) : asset('assets/img/prod-1.png')}}" alt="{{$product->title}}" class="img-fluid">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <h6 class="text-capitalize">{{$product->title}}</h6>
                            </div>
                        </div>
                    </div>
                @endif
            @endforeach
        </div>
    </div>
@endsection