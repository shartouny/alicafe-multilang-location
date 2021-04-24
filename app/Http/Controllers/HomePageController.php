<?php

namespace App\Http\Controllers;

use App\Models\HomeBannerSlider;
use App\Models\News;
use App\Models\Products;
use Illuminate\Http\Request;

class HomePageController extends Controller
{
    function index(){

        $sliders = HomeBannerSlider::all();
        $news = News::orderBy('date', 'desc')->get();
        $products = Products::where('featured', 1)->get();
       

        
        $data = array(
            'sliders' => $sliders,
            'news' => $news,
            'products' => $products,
            'title'  => 'Home'
        );
        return view('home' ,$data);
    }
}
