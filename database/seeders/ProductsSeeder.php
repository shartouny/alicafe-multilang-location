<?php

namespace Database\Seeders;

use App\Models\Products;
use Illuminate\Database\Seeder;

class ProductsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $arr = array();
        for ($i = 0; $i < 50; $i++) {
            // Products::create([
            //     'title' =>'Title of the products comes here' . $i,
            //     'details' => '25g X 30 Sachets' . $i,
            //     'description' => $i . 'Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day',
            //     'img' => '',
            //     'img_gallery' => '',
            //     'category' => $i % 2 ? 1 : 2 ,
            // ])->category()->attach(1);
            $arr['title'] = 'Title of the products comes here' . $i;
            $arr['details'] = '25g X 30 Sachets' . $i;
            $arr['description'] = $i . 'Real Coffee, Real Taste, No Flavour Added. <br><br> A Blend Of High Quality Arabica Beans Inspired By The French Roasting Technique Has A Rich And Smoky Taste For Those Looking For A Convenient Yet Delicious Coffee And Turns Your Coffee Break Into A Truly Special Moment In The Day';
            $arr['img'] = '';
            $arr['img_gallery'] = [$i . ''];
            $arr['categories'] = $i%2 ? 1 : 2;
            $products[] = $arr;
        }
        foreach ($products as $product) {
            
            Products::create($product)->category()->attach($product['categories']);
                        
        }
        $mixes_products = Products::where('categories' , 1)->take(3)->get();
        foreach($mixes_products as $product){

            $product->category()->attach(3);
        }
        $value_products = Products::where('categories' , 1)->skip(3)->take(4)->get();
        foreach($value_products as $product){

            $product->category()->attach(4);
        }
        $capocino_products = Products::where('categories' , 1)->skip(7)->take(3)->get();
        foreach($capocino_products as $product){

            $product->category()->attach(5);
        }
            
    }
}
