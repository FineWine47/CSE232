<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        table {
            border-collapse: collapse;
            width: 50%;
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
            padding-left: 20px;
        }
        th{
            font-weight: 900;
            color:red;
        }
        body {

            font-family: Arial;
        }
    </style>
</head>
<body>
    <table>
        <h4>Students Name</h4>
        <thead>
            <tr>
                <!-- <th>S/N</th> -->
                <th>Names</th>

            </tr>
        </thead>
        @foreach ($students as $student)
        <tr>
                    <tbody>
                    <!-- @for($i=0; $i<10;$i++)
                    <td>{{$i}}</td>
                    @endfor -->
                    <td>{{$student}}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>


