<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Products extends Model
{
    use HasFactory;
    function category()
    {
        return $this->belongsToMany('App\Models\Category');
    }
    function isRelated($category)
    {
        return $this->category->contains($category);
    }
}
