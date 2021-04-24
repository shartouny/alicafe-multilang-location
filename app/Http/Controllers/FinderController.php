<?php

namespace App\Http\Controllers;

use App\Models\FinderAnswers;
use App\Models\FinderQuestions;
use App\Models\Products;
use Illuminate\Http\Request;

class FinderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $questions = FinderQuestions::all();
        $answers = FinderAnswers::all();
        $results = Products::where('in_results', true)->pluck('id')->toArray();
        $products = Products::all();
        $shuffle = shuffle($results);
        $id = $results[0];
        $data = array(
            'questions' => $questions,
            'answers'   => $answers,
            'id'        => $id,
            'title'     => 'Find Your Perfect Cup'
        );
        return view('finder', $data);
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

        $product = Products::find(request()->finder);
        $data = array(
            'product' => $product,
            'title' =>  $product->title??'',
        );
        return view('finder-results', $data);
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
