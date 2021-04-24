<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class News extends Model
{
    use HasFactory;
    function limit($limit = 50)
    {
        return implode(' ', array_slice(explode(' ', $this->content), 0, $limit)) .'...';
    }
    function formatDate($format = 'M ,d'){
        return date($format , strtotime($this->date));
    }
}
