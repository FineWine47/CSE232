{{-- <h1 style="text-align: center;color:rgb(19, 182, 19)">hello welcome {{$user->firstname}} </h1> --}}



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="//unpkg.com/alpinejs" defer></script>
    <!-- Include Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: #eee !important;	
        }

        .wrapper {	
            margin-top: 80px;
            margin-bottom: 80px;
        }

        .form-signin {
            max-width: 380px;
            padding: 15px 35px 45px;
            margin: 0 auto;
            background-color: #fff;
            border: 1px solid rgba(0,0,0,0.1);
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        .form-signin-heading,
        .checkbox {
            margin-bottom: 20px;
        }

        .form-control {
            position: relative;
            font-size: 16px;
            height: auto;
            padding: 10px;

            &:focus {
                z-index: 2;
            }
        }

        input[type="text"] {
            margin-bottom: 20px;
            border-radius: 5px;
        }

        input[type="password"] {
            margin-bottom: 20px;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    @if(session()->has('message'))
    <div class="alert alert-success" style="text-align: center;" x-data="{show:true}" x-init="setTimeout(()=>show=false,5000) " x-show="show">
        {{session()->get('message')}}
    </div>
    @endif
    <div class="wrapper">
        <form class="form-signin" action="/update/{{$user->id}}" method="POST" >
            @method('PUT') 
            <h1 style="text-align: center;color:red">Welcome {{$user->lastname}} </h1><hr>    
            <h2 style="text-align: center;color:red" class="mb-4">Please Update your Record</h2>
            @csrf
            
            <div class="mb-3">
                @error('lastname') <div class="text-danger">{{ $message }}</div>@enderror
                <input type="text" class="form-control" name="lastname" placeholder="Lastname" value="{{$user->lastname }}"/>
                
                <div class="mb-3">
                    @error('firstname') <div class="text-danger">{{ $message }}</div>@enderror
                    <input type="text" class="form-control" name="firstname" placeholder="Firstname" value="{{$user->firstname }}"/>
                </div>

                <div class="mb-3">
                @error('email') <div class="text-danger">{{ $message }}</div>@enderror
                <input type="text" class="form-control " name="email" placeholder="Email" value="{{$user->email }}" />



            <!-- Add similar blocks for the other inputs -->

            <button class="btn btn-lg btn-primary btn-block" onclick="redirect to 'dnine'" type="submit">Update</button>   
        </form>
    </div>

    <!-- Include Bootstrap JS and Popper.js -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>