@extends('layouts.master')

@section('title', 'Đăng tin user')

@section('styles')
    <!-- Bootstrap 5 CDN -->

    <style>
        .container {
            overflow: hidden;
            max-width: 100%;
        }

        @media (max-width: 768px) {
            .card {
                width: 100%;
            }
        }
    </style>
@endsection

@section('content')
<div class="container mt-5">
    <div class="card p-4 mx-auto" style="max-width: 600px; width: 100%;"> <!-- Center the card and restrict width -->
        <h2 class="text-center mb-4">Đăng bài viết</h2>

        <form action="/articles-create" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="mb-3">
                <label for="title" class="form-label">Tiêu đề</label>
                <input type="text" name="title" id="title" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="content" class="form-label">Nội dung</label>
                <textarea name="content" id="content" class="form-control" required></textarea>
            </div>
            <div class="mb-3">
                <label for="category_id" class="form-label">Danh mục</label>
                <select name="category_id" id="category_id" class="form-select" required>
                    @foreach($categories as $category)
                    <option value="{{ $category['id'] }}">{{ $category['name'] }}</option>
                    @endforeach
                </select>
            </div>
            <div class="mb-3">
                <label for="image" class="form-label">Hình ảnh</label>
                <input type="file" name="image" id="image" class="form-control">
            </div>
            <div>
                <button type="submit" class="btn btn-primary w-100">Đăng bài</button>
            </div>
        </form>
    </div>
</div>
@endsection