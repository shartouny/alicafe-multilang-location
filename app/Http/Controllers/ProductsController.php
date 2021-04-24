<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Products;
use Illuminate\Http\Request;

class ProductsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(request()->category){
            $category = Category::where('name', request()->category)->first();
            
        }else{
            $category = Category::first();
        }
        $products = Products::with('category', 'category.products')->whereHas('category', function ($query) use($category){
            $query->where('name', $category->name);
        })->get();
        // dd(Category::first('name')->name);
        // if(request()->sub_category){
        //     $products = Products::with('category')->whereHas('category', function ($query) {
        //         $query->where('name', request()->sub_category);
        //     })->get();
        // }

        $data = array(
            'category' => $category,
            'products' => $products,
            'title'    => 'Products ' . $category->name,
        );
        return view('products', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $product = Products::find($id);
        // dd($product->category->where('parent_id' , Null)->first()->name);
        $products= Products::with('category', 'category.products')->whereHas('category', function($query) use($product){
            $query->where('name', $product->category->where('parent_id', Null)->first()->name);
        })->get();
        $data = array(
            'product' => $product,
            'products' => $products,
            'title'    => 'Products ' . $product->title,

        );
        return view('products_details', $data);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
