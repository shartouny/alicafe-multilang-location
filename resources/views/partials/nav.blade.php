

<body class="{{$bgcolor??''}}" style="background-image: url('{{config('app.url')}}/assets/img/bg.jpg'); background-size:cover">
    <div id="header" class="{{$headerPos ?? 'fixed-top' }} header-transparent py-2 w-100">
        <div class="container">
            <div class="row justify-content-between">
                <div class="col-auto">
                    <div class="row h-100">
                        <div class="col my-auto">
                            {{-- <a href="{{route('home')}}" class="logo mr-auto"><img src="{{config('app.url')}}/assets/img/<?= $logo??'logo' ?>.png" alt=""></a> --}}
                            <nav class="main-nav d-none d-lg-block  my-auto">
                                <ul>
                                    <li><a href="{{route('home')}}" class="logo mr-auto"><img src="{{config('app.url')}}/assets/img/<?= $logo??'logo' ?>.png" alt=""></a></li>
                                    <li class="active"><a href="{{route('news.index')}}">{{__("what's new")}}</a></li>
                                    @if (isset($categories) && !empty($categories))
                                        @foreach ($categories as $category)
                                            @if (empty($category->parent_id))
                                                <li><a href="{{route('products.index', ['category' => $category->name , 'lang' => app()->getLocale()] )}}">{{$category->name}}</a></li>
                                            @endif
                                        @endforeach
                                    @endif
                                    <li><a href="{{route('finder.index' , app()->getLocale())}}">{{__('find your perfect cup')}}</a></li>
                                    <li><a href="{{route('contact.index')}}">{{__('Contact Us')}}</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>

                <div class="col-auto">
                    <div class="row justify-content-end h-100">
                        <div class="col-auto h-100">
                            <div class="row h-100">
                                <div class="col my-auto">
                                    <nav class="main-nav d-none d-lg-block col-auto my-auto">
                                        <ul>
                                            <li class="nav-item dropdown">
                                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" aria-haspopup="false" aria-expanded="false">
                                                    <i class="fa fa-globe"></i>
                                                    <div class="flag">
                                                        <div class="flag-container">
                                                            <img src="https://www.countryflags.com/wp-content/uploads/united-arab-emirates-flag-png-large.png" alt="alt" class="img-fluid" style="width:24px;max-height:24px">
                                                        </div>
                                                    </div>
                                                </a>
                                                <div class="drop-down-menu">
                                                    <div class="row mt-2">
                                                        <div class="col-12 my-1">
                                                            <label for="lang">{{__('Language')}}</label>
                                                        </div>
                                                        <div class="col-12">
                                                            <select name="lang" id="lang" class="form-control">
                                                                @foreach(config('app.languages') as $langLocale => $langName)
                                                                    <option value="{{$langLocale}}" {{Session::get('language')== $langLocale ? 'selected' : ''}} >{{$langName}}</option>
                                                                @endforeach
                                                               
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="row mt-2">
                                                        <div class="col-12 my-1">
                                                            <label for="lang">{{__('Location')}}</label>
                                                        </div>
                                                        <div class="col-12 my-1">
                                                            <select name="lang" id="lang" class="form-control">
                                                                <option value="eng">{{__('United Arab Emirates')}}</option>
                                                                <option value="fr">{{__('Bahrain')}}</option>
                                                                <option value="ar">{{__('Lebanon')}}</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <button type="button" class="mobile-nav-toggle d-lg-none"><i class="fa fa-bars"></i></button>

            </div>
        </div>
    </div>