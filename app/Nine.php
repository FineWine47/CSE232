<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Nine extends Model
{
    use HasFactory;
    protected $fillable =[
        'lastname',
        'firstname',
        'email',
        'password'
    ];
}
