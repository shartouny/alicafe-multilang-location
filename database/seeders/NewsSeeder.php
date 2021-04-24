<?php

namespace Database\Seeders;

use App\Models\News;
use Illuminate\Database\Seeder;

class NewsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $arr = array();
        for($i = 0; $i<10; $i++){
            $arr['img'] = '';
            $arr['title'] = 'Title of the news comes here'.$i;
            $arr['date'] = 'February, ' . $i;
            $arr['content'] = $i.'Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit fugiat quibusdam accusantium neque deserunt laborum pariatur dolorem voluptates, totam ducimus?';
            $arr['slider'] = $i%2 ;
            $news[] = $arr;
        }       
        foreach ($news as $new) {
            News::create($new);
        }
    }
}
