<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

    
    Route::get('/', 'HomePageController@index')->name('home');
    Route::resource('news', 'NewsController');
    Route::resource('products', 'ProductsController');
    Route::resource('finder', 'FinderController');
    Route::get('/contact', 'ContactController@index')->name('contact.index');
    Route::post('/contact', 'ContactController@contactSubmit')->name('contact.submit');

    Route::group(['prefix' => 'back_office'], function () {
        Voyager::routes();
    });
    
   
