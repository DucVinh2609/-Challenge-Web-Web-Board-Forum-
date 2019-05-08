<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class topic extends Model
{
   	protected $table="topic";
    public $timestamps=false;
   	public function  reply(){
        return $this->hasMany('App\reply','id_topic','id');
    }
    public function  category(){
        return $this->hasOne('App\category','id_category','id');
    }
}
