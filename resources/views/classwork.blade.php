<h1 style="color: rgb(235, 18, 90); text-align: center;">STUDENT RECORDS</h1>
<table border="1" style="margin-left: 15%">
    <tr>
        <th>ID</th>
        <th>LASTNAME</th>
        <th>FIRSTNAME</th>
        <th>EMAIL</th>
        <th>AVATAR</th>
    </tr>
    
    @foreach ($users as $user)
    <tr>
        <td>{{ $user['id'] }}</td>
        <td>{{ $user['last_name'] }}</td>
        <td>{{ $user['first_name'] }}</td>
        <td>{{ $user['email'] }}</td>
        <td><img src="{{ $user['avatar'] }}" alt="Avatar" width="100" height="100"></td>
    </tr>
        {{-- <tr>
            <td>{{ $user['id'] }}</td>
            <td>{{ $user['last_name'] }}</td>
            <td>{{ $user['first_name'] }}</td>
            <td>{{ $user['email'] }}</td>
            <td>{{ $user['email'] }}</td>
            <td><img src="{{ $user['avatar'] }}" alt="Avatar" width="100" height="100"></td>
        </tr> --}}
    @endforeach
</table>
