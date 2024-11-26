@extends('admin.layouts.master')

@section('title', 'All Comment')

@section('content')
    <div class="m-2">
        <h2>All Comments</h2>
    </div>
    <table class="table table-hover table-primary my-2 mx-2">
        <thead class="bg-primary text-white">
            <th>ID</th>
            <th>Article ID</th>
            <th>User ID</th>
            <th>Content</th>
            <th>Created At</th>
            <th>Actions</th>
        </thead>
        <tbody>
            @foreach ($comments as $comment)
                <tr>
                    <td>{{ $comment['id'] }}</td>
                    <td>{{ $comment['article_id'] }}</td>
                    <td>{{ $comment['user_id'] }}</td>
                    <td>{{ $comment['content'] }}</td>
                    <td>{{ $comment['created_at'] }}</td>
                    <td>
                        <a href="{{ BASE_URL_ADMIN }}comment-del/{{ $comment['id'] }}" 
                           class="delete btn btn-secondary"
                           onclick="return confirm('Are you sure you want to delete this comment?');">
                           Delete
                        </a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
@endsection
