<?php

namespace Database\Seeders;

use App\Models\HomeBannerSlider;
use Illuminate\Database\Seeder;

class HomeBannerSliderSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $sliders = array(

            [
                'img' => '',
                'title' => 'French Roast <br> 3 IN 1',
                'subtitle' => '',
                'text_position' => '',
                'button_text' => 'view more',
                'button_link' => '#',
            ],
            [
                'img' => '',
                'title' => 'lets chat for the real karak <br> chai experience',
                'subtitle' => '',
                'text_position' => 'center',
                'button_text' => '',
                'button_link' => '',
            ],
            [
                'img' => '',
                'title' => 'recipe for life!',
                'subtitle' => '',
                'text_position' => '',
                'button_text' => '',
                'button_link' => '',
            ],
            [
                'img' => '',
                'title' => 'online order',
                'subtitle' => 'now alicafe is available for',
                'text_position' => '',
                'button_text' => '',
                'button_link' => '',
                'extra_imgs'    => '[1,1,1,1]'
            ],
        );
        foreach ($sliders as $slider) {

            HomeBannerSlider::create($slider);
        }
    }
}
