<?php

namespace App\Models\Apjar;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Faculty extends Model
{
    use HasFactory;

    public function user(){
        return $this->belongsTo(\App\Models\User::class, 'user_id', 'id');
    }
    protected $table ='apjar_faculty';
}
