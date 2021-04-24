@extends('layouts.app', ['headerPos' => 'sticky-top'])
@section('content')
    
<section id="header-banner" class="w-100 overflow-hidden">
    <div class="row">
        <div class="col-12 position-relative">
            <img src="{{isset($category->banner) && !empty($category->banner) ? asset('storage/'.$category->banner) : asset('assets/img/coffe-range-banner1.png')}}" alt="" class="img-fluid">
            <div class="container text-center position-absolute place-top-left place-md-center w-md-75">
                <div class="row">
                    <div class="col">
                        <h1>{{$category->name}}</h1>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>
<!-- header banner end  -->
<!-- partners section start  -->
<div class="p-3">
    <div id="modal-body" class="w-md-75 mx-auto mt-md-n5 bg-white z-100 position-relative border border-gray">
        @if ($category->hasChild())
            <section id="sub-cat">
                <div class="container py-5">
                    <div class="row justify-content-center">
                        <div class="col-md-5">
                            <div id="owl-carousel-3" class="owl-carousel owl-theme owl-carousel-3">
                                @foreach ($category->children() as $sub)
                                    <div class="item">
                                        <a href="#" data-filter=".cat--{{$sub->id}}">
                                            <div class="row">
                                                <div class="col-12">
                                                    <div class="overflow-hidden">
                                                        <img src="{{isset($featured_img->featured_img) && !empty($sub->featured_img) ? asset('storage/'.$sub->featured_img): asset('assets/img/prod-1.png')}}" alt="{{$sub->name}}" class="p-3 img-fluid">
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                        <div class="row">
                                            <div class="col-12 text-center">
                                                <h6>{{$sub->name}}</h6>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        @endif
       
        <section id="{{$category->hasChild()? 'cat-content' : ''}}">
            <div class="p-5">
                @if ($category->hasChild())
                    @foreach ($category->children() as $sub)
                    <div class="children mt-5 cat--{{$sub->id}}">
                        <div class="row mt-5 px-5">
                            @foreach ($products as $product)
                                @if ($product->isRelated($sub->id))
                                    <div class="col-md-3 ">
                                        <a href="{{route('products.show' , $product->id)}}">
                                            <div class="row h-100">
                                                <div class="col-12">
                                                    <div class="overflow-hidden position-relative bg-white h-100">
                                                        <div class="overlay-layer"></div>
                                                        <div class="row h-100">
                                                            <div class="col my-auto">
                                                                <img src="{{isset($product->img) && !empty($product->img) ? asset('storage/'.$product->img) : asset('assets/img/prod-1.png')}}" alt="{{$product->name}}" class="px-5 img-fluid">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                        <div class="row mt-2">
                                            <div class="col-12 text-center">
                                                <h6 class=" text-capitalize">{{$product->title}}</h6>
                                            </div>
                                        </div>
                                    </div>
                                @endif
                            @endforeach
                        </div>
                    </div>
                    @endforeach
                @else
                    <div class="row mt-5">
                        @foreach ($products as $product)
                            <div class="col-md-3">
                                <a href="{{route('products.show' , $product->id)}}">
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="overflow-hidden position-relative bg-white">
                                                <div class="overlay-layer"></div>
                                                <img src="{{isset($product->img) && !empty($product->img) ? asset('storage/'.$product->img) : asset('assets/img/prod-1.png')}}" alt="{{$product->name}}" class="p-5 img-fluid">
                                            </div>
                                        </div>
                                    </div>
                                </a>
                                <div class="row mt-2">
                                    <div class="col-12 text-center">
                                        <h6 class=" text-capitalize">{{$product->title}}</h6>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                @endif
            </div>
        </section>

    </div>
</div>


@endsection

