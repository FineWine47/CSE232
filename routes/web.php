<?php

use App\Http\Controllers\Ninecontroller;
use App\Http\Controllers\oderscontroller;
use App\Http\Controllers\studentscontroller;
use App\Models\student;
use App\Nine;
use Faker\Guesser\Name;
use Illuminate\Support\Facades\Route;
use Symfony\Component\HttpKernel\Profiler\Profile;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/lincole.ng', function () {
//     return redirect('ggnf.com');
// });


Route::get('uche.com',function() {
    return "Hey guy! This is my page";
});


Route::get('student.com',[studentscontroller::class,'getview']);
Route::get('payment.com',[studentscontroller::class,'getpayment']);

Route::get('noacces',function(){
    return view('noacces');
});


Route::view('twourl.com','page2');
Route::view('threeurl.com','page3');
Route::view('footer.com','footer');
Route::view('headerurl.com','header');
Route::view('henryurl.com','body');


Route::get('list.com',[oderscontroller::class,'index']);
Route::PATCH('get',[oderscontroller::class,'getdata']);// ->name('register');



Route::get('lincoln.com',function(){
    return view('page2');
});
Route::group(['middleware' => ['protectedPage']], function () {
    Route::view('oneurl.com', 'page1');

    Route::view('login', 'login')->middleware('nodeJs');

    Route::get('/', function () {
        return view('welcome');
    });
});

Route::get('Year', function () {
    return view('Year');
});


Route::view( 'dir1', 'redirect1');
Route::view( 'dir2', 'redirect2');
Route::view( 'dir3', 'redirect3');

// Route::get('/',function(){
//    return redirect ('dir1');
// });
// Route::get('login',function(){
//    return redirect ('dir2');
// });
Route::get('dir2',function(){
   return redirect ('dir3');
});

Route::get('student.com',[studentscontroller::class,'index']);
Route::get('getusers',[studentscontroller::class,'getUsers']);
Route::get('getHttp',[studentscontroller::class,'getHttp']);
Route::get('display',[studentscontroller::class,'users']);
Route::get('classwork',[studentscontroller::class,'peoples']);


// Route::get('register',function(){
//     if(session()->has('keyvalue')){
//         return redirect("{{route('pro.sessio')}}");
//     }
//     else{
//         return view('profile');
//     }
// })->name('reg.session');


// //profile page
// Route::get('profile', function(){
//     if(!session()->has('keyvalue')){
//         return redirect('{{route(reg.session)}}');

//     }

// })->name('pro.session');
// // routes/web.php

// Route::post('getsession',[studentscontroller::class,'getsection']);
// //Route::get('/assignment', [studentscontroller::class, 'getView']);

// Route::get('/logout',function(){
//     if (session()->has('keyvalue')){
//         session()->pull('keyvalue');
//         return redirect('register');
//     }
// })->name('log.session');
// routes/web.php

// routes/web.php
Route::get('register', function () {
    if (!session()->has('keyvalue')) {
        return view('register');
    } else {
        return redirect()->route('pro.session');
    }
})->name('reg.session');

Route::get('profile', function () {
    if (!session()->has('keyvalue')) {
        return redirect()->route('reg.session');
    } else {
       
        return view('profile');
    }
})->name('pro.session');

Route::post('getsession', [StudentsController::class, 'getsection'])->name('getsession'); 

Route::get('/logout', function () {
    if (session()->has('keyvalue')) {
        session()->forget('keyvalue'); 
        return redirect()->route('reg.session');
    } else {
        return redirect()->route('reg.session'); 
    }
})->name('log.session');



Route::view('log','log');
Route::view('profile','profile')->name('profile.student');

//Route::get('log',function{}{
  //  if(session{}->has('keyvalue'));
    //session()->pull('keyvalue');
    //return redirect(route('log.section'));
//}
//})->name('logout.student');



//file uploade in laravel

Route::get('upload',function(){
 return view('file');
});

// Route::get('getfile',function(){
//  return view('upload');
// });


Route::view('getfile','upload');

Route::post('fileupload',
[studentscontroller::class,'upload'])
->name('file.upload');


Route::get('nine',[Ninecontroller::class,'upoad'])->name('file upload');

Route::get('dnine',[Ninecontroller::class,'index']);
// registraion route
Route::view('registernine','registernine');

// store user
Route::post('sendnine',[Ninecontroller::class,'store']);

//show edit form

Route::get('edit/{nine}',[Ninecontroller::class,'edit']);

// update users record
Route::put('update/{nine}',[Ninecontroller::class,'update']);
// delete users record
Route::get('delete/{nine}',[Ninecontroller::class,'destroy']);