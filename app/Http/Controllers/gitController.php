<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class gitController extends Controller
{
    //
    public function git(){
        return response("hello from github, I'm Treasure");
    }
}
