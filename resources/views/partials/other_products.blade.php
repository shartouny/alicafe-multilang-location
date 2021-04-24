<section class="container">
        <div class=" p-md-5 p-3" id="other-products" data-aos="fade-up">
            <div class="row justify-content-center">
                <div class="col-auto">
                    <h2 class="text-capitalize">{{__('other products')}}</h2>
                </div>
            </div>
            <div id="" class="owl-carousel owl-theme owl-carousel-4">
                @php $current = $product->id @endphp
                @foreach ($products as $product)
                    @if ($product->id != $current)
                        <div class="item">
                            <div class="row">
                                <div class="col h-100">
                                    <a href="{{route('products.show', $product->id)}}">
                                        <div class="row h-100">
                                            <div class="col-12 h-100">
                                                <div class="overflow-hidden position-relative h-100 bg-white p-5">
                                                    <div class="overlay-layer"></div>
                                                    <div class="row h-100">
                                                        <div class="col my-auto h-100">
                                                            <img src="{{!empty($product->img)? asset('storage/'.$product->img) : asset('assets/img/prod-1.png')}}" alt="{{$product->title}}" class="img-fluid">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="row mt-3">
                                <div class="col-12">
                                    <h6>{{$product->title}}</h6>
                                </div>
                            </div>
                        </div>
                    @endif
                @endforeach
            </div>
        </div>
    </section>