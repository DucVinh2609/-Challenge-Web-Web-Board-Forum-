<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class category extends Model
{
    protected $table="category";
    public $timestamps=false;
    public function topic()
    {
        return $this->belongsTo('App\topic');
    }
    
}
