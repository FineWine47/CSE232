<?php

namespace App\Http\Controllers;

use App\Nine;
use Illuminate\Http\Request;
use Illuminate\Contracts\Validation\Rule;

class Ninecontroller extends Controller
{
    //
    public function index(){
        $data = Nine::all();
        return view('nine',['users'=>$data]);
    }
    
    public function store (Request $request){
        $formfields = $request->validate([
            'lastname' => 'required|',
            'firstname' => 'required|',
            'email' => 'required|email',
            'password' => ['required','min:3','max:15']
        ]);

        $formfields ['password']= bcrypt($formfields['password']);
        if ($formfields) {
            $user = Nine::create($formfields);
            return redirect('/dnine')->with('message','User created successfully');
        }
    }

    //show edit form
    public function edit(Nine $nine){
        return view("nine_edit",["user"=>$nine]);
    }
    // update user record
    public function update(Request $request,Nine $nine){
        $formfields = $request->validate(
            [
                "lastname" => ["required"],
                "firstname" => ["required"],
                "email" => ["required","email"]
            ]
            );
            if ($formfields) {
                $nine ->update($formfields);
                return redirect('/dnine') -> with ('message','Data updated Successfully!');
            }
    }
    // delete users record
    public function destroy(Nine $nine){
        $nine->delete();
        return redirect("/dnine")->with('message','Record deleted Successfully!');
    }
 
}
