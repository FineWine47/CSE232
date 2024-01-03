<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Blade;

class oderscontroller extends Controller
{
    //
    public function index(){
    $lists= ['faith','promise','henry','favour'];
    return Blade::render("<h1 style=\"color:orange;\">hello am from controller</h1>");
    }

    public function getdata(Request $request)
    {
       $data = $request->validate([
            'firstname' => 'required|min:3|max:15',
            'lastname' => 'required|min:3|max:15',
            'email' => 'required|email',
            'studentid' => 'required',
            'password' => 'required|confirmed',
       ]);
       return json_encode($data);
        // $data = $request->input();
        // return dd($data);
    }
}
