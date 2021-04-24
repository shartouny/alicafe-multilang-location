<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $table = 'category';
    use HasFactory;
    function products()
    {
        return $this->belongsToMany('App\Models\Products');
    }
    function isParent(){
        if(empty($this->parent_id)){
            return true;
        }
        return false;
    }
    function hasChild(){
        if(!empty(Category::where('parent_id', $this->id)->first())){
            return true;
        }
        return false;
    }
    function children(){
        if($this->hasChild()){
            return Category::where('parent_id', $this->id)->get();
        }
    }
    public function parentId()
    {
        return $this->belongsTo(self::class);
    }
    
    
}
