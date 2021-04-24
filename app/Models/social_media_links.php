<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class social_media_links extends Model
{
    use HasFactory;
   
    function formatURL(){
        $input = $this->link;
        if (!preg_match('#^http(s)?://#', $input)) {
            $input = 'https://' . $input;
        }
        return $input;
    }
   
    

   
}
