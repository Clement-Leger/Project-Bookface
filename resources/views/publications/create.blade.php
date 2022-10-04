@extends('layout')

@section('content')


<form action="{{ route('publication.post') }}" method="post" enctype="multipart/form-data">
    <!-- Add CSRF Token -->
    @csrf
<div class="form-group">
    <label>User_id</label>
    <input type="number" class="form-control" name="user_id" required>
</div>
<div class="form-group">
    <input type="file" name="image_url" required>
</div>
<button type="submit">Submit</button>
</form>

@endsection