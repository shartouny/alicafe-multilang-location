<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <!-- <link rel="icon" type="image/png" href="assets/img/browser_icon.ico"> -->
    <title>{{setting('site.title')." | " }}{{$title ?? ''}}</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Montserrat:300,400,500,600,700" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="{{config('app.url')}}/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" rel="stylesheet">
    <link href="{{config('app.url')}}/assets/vendor/ionicons/css/ionicons.min.css" rel="stylesheet">
    <link href="{{config('app.url')}}/assets/vendor/venobox/venobox.css" rel="stylesheet">
    <link href="{{config('app.url')}}/assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="{{config('app.url')}}/assets/vendor/owl.carousel/assets/owl.theme.default.css" rel="stylesheet">
    <link href="{{config('app.url')}}/assets/vendor/ex-zoom/jquery.exzoom.css" rel="stylesheet">
    <link href="{{config('app.url')}}/assets/vendor/magnificic-popup/magnific-popup.css" rel="stylesheet">


    <link href="{{config('app.url')}}/assets/vendor/aos/aos.css" rel="stylesheet">
    <link rel="stylesheet" href="{{config('app.url')}}/assets/css/experience.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">

    <!-- Template Main CSS File -->

    {{-- <link href="{{config('app.url')}}/assets/css/style.min.css" rel="stylesheet"> --}}
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">


</head>
@include('partials.nav')
@yield('content')

<footer data-aos="fade-up">
        <div class="p-md-5">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-1 col-4 p-3 p-md-0">
                        <div class="row h-100">
                            <div class="col-12 my-auto my-lg-0">
                                <a href="{{route('home' , app()->getLocale())}}">
                                    <img src="{{config('app.url')}}/assets/img/logo.png" alt="" class="img-fluid">
                                </a>
                                <hr class="d-sm-none">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-md-5">
                    <div class="col">
                        <nav class="main-nav col-auto my-auto">
                            <ul>
                                <li class="active"><a href="{{route('news.index' , app()->getLocale())}}">what's new</a></li>
                                @if (isset($categories) && !empty($categories))
                                    @foreach ($categories as $category)
                                        @if (empty($category->parent_id))
                                            <li><a href="{{route('products.index', ['category' => $category->name,'lang'=> app()->getLocale()])}}">{{$category->name}}</a></li>
                                        @endif
                                    @endforeach
                                @endif
                                <li><a href="{{route('finder.index' , app()->getLocale())}}">find your cup</a></li>
                                <li><a href="contact.php">Contact Us</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-auto">
                        <div class="social-icons ">
                            <div><a href="#" class="twitter"><i class="fab fa-twitter"></i></a></div>
                            <div><a href="#" class="facebook"><i class="fab fa-facebook-f"></i></a></div>
                            <div><a href="#" class="instagram"><i class="fab fa-instagram"></i></a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="w-100 bg-secondary py-3 text-center text-md-left">
            <div class="container">
                <div class="row justify-content-md-between justify-content-center">
                    <div class="col-auto">
                        <p>All rights are reserved Alicafe 2021</p>
                        <hr class="d-sm-none">
                    </div>
                    <div class="col-auto">
                        <a target="blank" href="https://www.dowgroup.com">By Dow Group</a>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- footer section end  -->
    <!-- Vendor JS Files -->
    <script src="{{config('app.url')}}/assets/vendor/jquery/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="{{config('app.url')}}/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="{{config('app.url')}}/assets/vendor/jquery.easing/jquery.easing.min.js"></script>
    <script src="{{config('app.url')}}/assets/vendor/php-email-form/validate.js"></script>
    <script src="{{config('app.url')}}/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="{{config('app.url')}}/assets/vendor/counterup/counterup.min.js"></script>
    <script src="{{config('app.url')}}/assets/vendor/venobox/venobox.min.js"></script>
    <script src="{{config('app.url')}}/assets/vendor/owl.carousel/owl.carousel.min.js"></script>
    <script src="{{config('app.url')}}/assets/vendor/waypoints/jquery.waypoints.min.js"></script>
    <script src="{{config('app.url')}}/assets/vendor/aos/aos.js"></script>
    <script src="{{config('app.url')}}/assets/vendor/ex-zoom/jquery.exzoom.js"></script>
    <script src="{{config('app.url')}}/assets/vendor/magnificic-popup/jquery.magnific-popup.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-circle-progress/1.2.0/circle-progress.min.js"></script>
    <!-- <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script> -->
    <script src="https://rawgit.com/kottenator/jquery-circle-progress/1.1.3/dist/circle-progress.js"></script>
    <script src="http://www.thehomescapers.com/test/wp-content/themes/homescapers/assets/js/isotope.min.js"></script>

    <!-- Template Main JS File -->
    <script src="{{asset('js/app.js')}}"></script>

    </body>

    </html>
    <script async="" src="http://alicafe.local:3000/browser-sync/browser-sync-client.js"></script>