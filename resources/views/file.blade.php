<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <form action="{{route('file.upload')}}" method="post" intype="multitype or form-data">
        @csrf
        <input type="file" name="photo">
        <button type="submit">upload</button>
    </form>
</body>
</html>