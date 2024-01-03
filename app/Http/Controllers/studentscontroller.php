<?php

namespace App\Http\Controllers;

use App\Models\student;
use App\Models\users;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Http;
class studentscontroller extends Controller
{
//     //return view
//     function getView(){
//      //   echo $name;
//         $students = ['faith','ayo','treasure','promise','kennedy','henry','mark', 'tony', 'seven', 'john', 'mary', 'mike', 'ajokz', 'great', 'teni', 'fortune', 'sonia', 'sam'];
//         return view('assignment', ['students'=> $students]);

//     }
//     //  

public function index(){
    $data = DB::select('select * from students');
    return json_encode($data);
}
public function getUsers() {
    // return Student::all();
   // return Student::find(25,'email');
   //return student::all('email');
  // return student::all('firstname','lastname');
   //return student::all('firstname','email');
  // $user= student::all();
   //return $user;

   $user= student::find([7,13,27,105]);
   return json_encode($user);
}
// http client
public function getHttp() {
    return Http::get("reqres.in/api/users?page=1");
}


public function users(){
$data = student::all();
return view('student',['users'=>$data]);
}

public function peoples(){
$data = Http::get("reqres.in/api/users?page=1");
if ($data->successful()) {
    $data = $data->json();
    return view('classwork', ['users' => $data['data']]);
} ;
}
public function user(){
    $data= student::all();
    return view('student',['user'=>$data]);
}

//working on section
public function getsection(Request $request){
    $data = $request->input();
    $request->session()->put('keyvalue', $data['firstname']);
    //dd(session('keyvalue'));

    if(session('keyvalue')){
        return redirect('profile');
    };
}


//file upload
public function upload(Request $request){
    $data = $request->file('photo')->store('image');
    dd($data);
}
}
