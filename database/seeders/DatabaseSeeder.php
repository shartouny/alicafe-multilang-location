<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call([
            HomeBannerSliderSeeder::class,
            NewsSeeder::class,
            CategorySeeder::class,
            ProductsSeeder::class,

        ]);
        // \App\Models\User::factory(10)->create();
    }
}
