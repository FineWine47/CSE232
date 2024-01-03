<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Updated User</title>
    <script src="//unpkg.com/alpinejs" defer></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
</head>
<body>
    @if(session()->has('message'))
    <div class="alert alert-success" style="text-align: center;" x-data="{show:true}" x-init="setTimeout(()=>show=false,5000) " x-show="show">
        {{session()->get('message')}}
    </div>
    @endif
   <div class="container">
       <div.col-md-6.offset-md-3.mt-5>
           <h3>User</h3><hr>
           
           
           <table  class="table table-striped">
            <thead>
                
                <tr>
                    <th scope="col">S/N</th>
                    <th scope="col">lastname</th>
                    <th scope="col">firstname</th>
                    <th scope="col">Email</th>
                    <th scope="col">Operations</th>
                    {{-- <th scope="col">Delete Operation</th> --}}
                
                    {{-- <th scope="col">password</th> --}}
                </tr>
            </thead>
            <tbody>
                @foreach ($users as $user)
                <tr>
                    <td>{{$user->id}}</td>
                    <td>{{$user->lastname}}</td>
                    <td>{{$user->firstname}}</td>
                    <td>{{$user->email}}</td>
                    <td><a href="{{'edit/'.$user->id}}" class="btn btn-primary">Edit</a>
                    <a href="{{'delete/'.$user->id}}" class="btn btn-danger">Delete</a></td>
                    {{-- <td>{{$user->password}}</td> --}}
                </tr>
                @endforeach
            </tbody>
            </table>
        </div>
        
    </div> 
</body>
</html>