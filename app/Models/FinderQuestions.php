<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FinderQuestions extends Model
{
    use HasFactory;
    function answers(){
        return $this->belongsTo('App\Models\FinderAnswers');
    }
    function children(){
        return FinderAnswers::where('question_id', $this->id)->get();
        }
}
