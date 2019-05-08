<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class reply extends Model
{
   	protected $table="reply";
    public $timestamps=false;
   	public function topic()
    {
        return $this->belongsTo('App\topic');
    }
}
