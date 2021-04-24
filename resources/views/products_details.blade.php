@extends('layouts.app', ['headerPos' => 'sticky-top'])

@section('content')
    
<!-- header banner start  -->
<section id="header-banner" class="w-100 overflow-hidden">
    <div class="row">
        <div class="col-12 position-relative">
            <img src="{{isset($product->banner) && !empty($product->banner) ? asset('storage/' .$product->banner) : asset('assets/img/product-banner.png')}}" alt="" class="img-fluid">
            <div class="container text-center text-md-left position-absolute place-top-left place-md-center w-md-75">
                <div class="row">
                    <div class="col">
                        <h1 class="text-white">{{$product->title}}</h1>
                        <p> <a href="{{route('home')}}">Home</a> - 
                            <a class="text-capitalize" href="{{route('products.index', ['category'=>$product->category[0]->name])}}">{{$product->category[0]->name}}</a>
                             - {{$product->title}}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- header banner end  -->
<!-- partners section start  -->
<div class="p-3">
    <section id="modal-body" class="w-md-75 mx-auto mt-md-n5 bg-white z-100 position-relative border border-gray">
        <div class="row">
            <div class="col-md-6 p-md-5">
                <div class="container">
                    @if (isset($product->img_gallery))
                        @php $gallery = json_decode($product->img_gallery) @endphp
                        
                    @endif                           
                    @if (!empty($gallery))
                        <div class="exzoom" id="exzoom">
                            <!-- Images -->
                            <div class="exzoom_img_box">
                                <ul class='exzoom_img_ul'>
                                    @foreach ($gallery as $img)
                                        <li><img src="{{ asset('storage/'.$img) }}"/></li>
                                        {{-- <li><img src="{{config('app.url')}}/assets/img/ginger.png"/></li>
                                        <li><img src="{{config('app.url')}}/assets/img/ginger.png"/></li>
                                        <li><img src="{{config('app.url')}}/assets/img/ginger.png"/></li>
                                        <li><img src="{{config('app.url')}}/assets/img/ginger.png"/></li> --}}
                                    @endforeach
                                </ul>
                            </div>
                            <div class="exzoom_nav"></div>
                        </div>
                    @else
                        <div class="exzoom" id="exzoom">
                            <!-- Images -->
                            <div class="exzoom_img_box">
                                <ul class='exzoom_img_ul'>
                                    <li><img src="{{config('app.url')}}/assets/img/ginger.png"/></li>
                                    <li><img src="{{config('app.url')}}/assets/img/ginger.png"/></li>
                                    <li><img src="{{config('app.url')}}/assets/img/ginger.png"/></li>
                                    <li><img src="{{config('app.url')}}/assets/img/ginger.png"/></li>
                                    <li><img src="{{config('app.url')}}/assets/img/ginger.png"/></li>
                                </ul>
                            </div>
                            <div class="exzoom_nav"></div>
                        </div>
                    @endif
                </div>
            </div>
            <div class="col-md-6">
                <div class="row h-100">
                    <div class="col h-100">
                        <div class="row h-100">
                            <div class="col-12 my-auto">
                                <div class="row">
                                    <div class="col">
                                        <div class="container">
                                            <h2>
                                                {{$product->title}}
                                            </h2>
                                            <p>{{$product->details}}</p>
                                            <div class="mt-4">
                                                <p>{!! $product->description !!}</p>
                                            </div>
                                            <div class="mt-4">
                                                <p>
                                                    <strong>Style:</strong> name of the style here
                                                    <!-- <div class="row mt-2"> -->
                                                    <!-- <div class="p-2 col-2 border border-secondary"> -->
                                                <div class="mt-2 row parent-container">
                                                    @if (!empty($gallery))
                                                        @php $i=0 @endphp
                                                        @foreach ($gallery as $img)
                                                            @if ($i<=4)
                                                                <a href="{{ asset('storage/'.$img) }}" class="col-2 pr-0"><img src="{{ asset('storage/'.$img) }}" alt="{{$product->title}}" class="img-fluid img-thumbnail p-2"></a>
                                                                @php $i++ @endphp
                                                            @endif
                                                        @endforeach
                                                    @else
                                                        <a href="{{config('app.url')}}/assets/img/ginger.png" class="col-2 pr-0"><img src="{{config('app.url')}}/assets/img/ginger.png" alt="{{$product->title}}" class="img-fluid img-thumbnail p-2"></a>
                                                        <a href="{{config('app.url')}}/assets/img/ginger.png" class="col-2 pr-0"><img src="{{config('app.url')}}/assets/img/ginger.png" alt="{{$product->title}}" class="img-fluid img-thumbnail p-2"></a>
                                                        <a href="{{config('app.url')}}/assets/img/ginger.png" class="col-2 pr-0"><img src="{{config('app.url')}}/assets/img/ginger.png" alt="{{$product->title}}" class="img-fluid img-thumbnail p-2"></a>
                                                        <a href="{{config('app.url')}}/assets/img/ginger.png" class="col-2 pr-0"><img src="{{config('app.url')}}/assets/img/ginger.png" alt="{{$product->title}}" class="img-fluid img-thumbnail p-2"></a>
                                                    @endif
                                                </div>

                                                <!-- </div> -->
                                                <!-- </div> -->
                                                </p>
                                            </div>
                                            <div class="mt-2">
                                                <p><strong>Do you want it?</strong></p>
                                                <div class="container">
                                                    <div class="row ">
                                                        <div class="col-md-10 p-0">
                                                            <div class="owl-carousel owl-theme providers">
                                                                <?php for ($i = 0; $i < 10; $i++) { ?>

                                                                    <div class="item">
                                                                        <a href="#" data-tab="#mixes">
                                                                            <div class="row">
                                                                                <div class="col-12">
                                                                                    <div class="overflow-hidden">
                                                                                        <img src="{{config('app.url')}}/assets/img/brands/noon.png" alt="ads" class="p-3 img-fluid img-thumbnail">
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </a>
                                                                    </div>
                                                                <?php } ?>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    @include('partials.other_products')
@endsection
