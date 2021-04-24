<?php

namespace Database\Seeders;

use App\Models\Category;
use Illuminate\Database\Seeder;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $arr = array(
            ['name' => 'coffe range'],
            ['name' => 'tea range'],
            [
                'name' => 'mixes',
                'parent_id' => 1,
            ],
            [
                'name' => 'value added',
                'parent_id' => 1,
            ],
            [
                'name' => 'capucino',
                'parent_id' => 1,
            ],
        );

        foreach($arr as $v){
            Category::create($v);
        }
    }
}
