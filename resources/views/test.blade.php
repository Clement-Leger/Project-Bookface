<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Section test</title>
</head>
<body>
    @extends('layout')

    @section('content')
    SECTION TEST

    <form method="get" action="{{ url('search') }}">
        <input type="search" name="query" placeholder="search">
        <button type="submit">Search</button>
    </form>

    <table>
        <thead>
            <tr>
                <th>id</th>
                <th>name</th>
                <th>email</th>
                <th>password</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($users as $user)
                <tr>
                    <td>{{$user->id}}</td>
                    <td>{{$user->name}}</td>
                    <td>{{$user->email}}</td>
                    <td>{{$user->password}}</td>
                </tr>
            @endforeach

            @foreach ($comments as $item)
            <tr>
                <td>{{$item->id}}</td>
                <td>{{$item->text}}</td>
                <td><img src="{{ asset($item->image_url) }}" width= '75' height= '75' /></td>
            </tr>
            @endforeach
        </tbody>
    </table>
    @endsection

</body>
</html>