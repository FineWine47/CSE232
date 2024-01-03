{{-- @foreach ($users as $user)
<h1 style="color: brown,text-align:center">student records</h1>
<table border="1" style="margin-left: 15%">
    <tr>
        <th>ID</th>
        <th>LASTNAME</th>
        <th>FIRSTNAME</th>
        <th>EMAIL</th>
        <th>STUDENTID</th>
        <th>SEMESTER</th>
        <th>PHONE</th>
        <th>GENDER</th>
    </tr>
        
    <tr>
        <th>$user['id']</th>
        <th>lastname</th>
        <th>firstname</th>
        <th>email</th>
        <th>studentid</th>
        <th>semester</th>
        <th>phone</th>
        <th>gender</th>
    </tr>
</table>
@endforeach --}}

<h1 style="color: rgb(58, 165, 42); text-align: center;">Students Record</h1>
<table border="1" style="margin-left: 15%">
    <tr>
        <th>ID</th>
        <th>LASTNAME</th>
        <th>FIRSTNAME</th>
        <th>OTHERNAME</th>
        <th>EMAIL</th>
        <th>STUDENTID</th>
        <th>SEMESTER</th>
        <th>PHONE</th>
        <th>GENDER</th>
    </tr>
    
    @foreach ($users as $user)
        <tr>
            <td>{{ $user['id'] }}</td>
            <td>{{ $user['lastname'] }}</td>
            <td>{{ $user['firstname'] }}</td>
            <td>{{ $user['othername'] }}</td>
            <td>{{ $user['email'] }}</td>
            <td>{{ $user['studentid'] }}</td>
            <td>{{ $user['semester'] }}</td>
            <td>{{ $user['phone'] }}</td>
            <td>{{ $user['gender'] }}</td>
        </tr>
        @endforeach
    </table>
