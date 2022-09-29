<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Bookface project</title>
</head>
<body>
    <form action="{{url('/store_user')}}" method="POST">
        @csrf
        <label for="name">Please, enter your name : </label>
        <input type="text" name="name">
        <br><br>
        <label for="email">Please, enter your adress email : </label>
        <input type="text" name="email">
        <br><br>
        <label for="password">Please, enter your password : </label>
        <input type="text" name="password">
        <br><br>
        <label for="name">Please, confirm your password : </label>
        <input type="text" name="confirm_password">
        <button type="submit">Submit</button>
    </form>
</body>
</html>