<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Noticias extends Model
{
    protected $fillable = [
        'tituloNoticia',
        'descNoticia'
    ];
   protected $guarded = ['id', 'created_at', 'update_at']; 
}
