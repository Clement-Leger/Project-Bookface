<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Barre de recherche</title>
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
        </tbody>
    </table>

    @foreach ($comments as $comment)
    <tr>
        <td>{{$comment->id}}</td>
        <td>{{$comment->text}}</td>
        <td><img src="{{ asset('storage/publication/'.$comment->image_url) }}" /></td>
    </tr>
    @endforeach
    @endsection
    
</body>
</html>