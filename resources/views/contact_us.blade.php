@extends('layouts.app', ['headerPos'=> 'sticky-top'])

@section('content')
    <section id="header-banner" class="w-100 overflow-hidden">
        <div class="row">
            <div class="col-12 position-relative">
                <img src="assets/img/contact-us-banner.png" alt="" class="img-fluid">
                <div class="overlay-shadow-yellow"></div>
                <div class="container text-center text-md-left position-absolute place-top-left place-md-center w-md-75">
                    <div class="row">
                        <div class="col">
                            <h1 class="text-white">Contact Us</h1>
                            <p><a href="#">Home</a> - Contact Us </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- header banner end  -->
    <!-- partners section start  -->
    <div class="p-3">
        <div id="modal-body" class="w-md-75 mx-auto mt-lg-n5 bg-white z-100 position-relative border border-gray">
            <div class="row p-5">
                <div class="col-md-4">
                    <h2>Contact Info</h2>
                    <p class="text-uppercase mt-3"> middle east regional office</p>
                    <p class="text-uppercase mt-3"> power root me fzco</p>
                    <p class="mt-3">
                        Tel: <a href="tel:+97142776599">+971 4 277 6599</a>
                        Fax: <a href="fax:+97142776599">+971 4 277 6599</a>
                        Email: <a href="mailto:sales@sdpowerroot">sales@sdpowerroot</a>
                    </p>
                    <div class="row mt-4">
                        <div class="col-auto">
                            <p>Follow Us</p>
                            <div class="social-icons ">
                                <div><a href="#" class="twitter"><i class="fab fa-twitter"></i></a></div>
                                <div><a href="#" class="facebook"><i class="fab fa-facebook-f"></i></a></div>
                                <div><a href="#" class="instagram"><i class="fab fa-instagram"></i></a></div>
                            </div>
                        </div>
                    </div>
                </div>
                @if ($errors)
                    @foreach ($errors as $error)
                        <div class="container">
                                <h2>
                                    {{$error}}
                                </h2>
                            </div>
                    @endforeach
                @endif
                <div class="col-md-8">
                    <div class="row">
                        <div class="col">
                            <div class="container">
                                <h2>
                                    contact form
                                </h2>
                            </div>
                            <form id="contact-form" method="POST" action="{{route('contact.submit')}}" enctype="multipart/form-data">
                                @csrf
                                <div class="row">
                                    <div class="form-group col-md-6">
                                        <label for="name">Name</label>
                                        <input name="name" type="text" class="form-control" id="name">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="email">Email</label>
                                        <input name="email" type="email" class="form-control" id="email">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-md-6">
                                        <label for="mobile">Mobile</label>
                                        <input name="mobile" type="text" class="form-control" id="mobile">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="type">Select Type</label>
                                        <select name="tyoe" id="type" class="form-control">
                                            <option value="">Select</option>
                                            <option value="1">Type 1</option>
                                            <option value="2">Type 2</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-md-12">
                                        <label for="country">Country</label>
                                        <select name="country" id="country" class="form-control">
                                            <option value="">Select</option>
                                            <option value="1">Country 1</option>
                                            <option value="2">Country 2</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-md-12">
                                        <label for="msj">Meesage *</label>
                                        <textarea name="msj" id="message" cols="30" rows="5" class="form-control"></textarea>
                                    </div>
                                </div>

                                <div class="row justify-content-center">
                                    <div class="col-auto">
                                        <button type="submit" class="btn btn-secondary text-white text-uppercase btn-block rounded-0 px-5 py-1">submit</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection