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
        h6 a {
            color: #007bff;
            font-size: 1.2rem;
            font-weight: bold;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        h6 a:hover {
            color: #66b2ff;
        }

        button {
            width: 100%;
            padding: 12px;
            background-color: #007bff;
            color: white;
            font-size: 1.2rem;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #0056b3;
        }

        button:active {
            background-color: #004085;
        }
    </style>
@endsection

@section('content')
<div class="container mt-5">
    <div class="card p-4 mx-auto" style="max-width: 600px; width: 100%;"> <!-- Center the card and restrict width -->
    <?php if (isset($_SESSION['success'])): ?>
    <div class="alert alert-success">
        <?= $_SESSION['success']; ?>
    </div>
    <?php unset($_SESSION['success']); ?>
<?php endif; ?>
<?php if (isset($_SESSION['error'])): ?>
    <div class="alert alert-danger">
        <?= $_SESSION['error']; ?>
    </div>
    <?php unset($_SESSION['error']); ?>
<?php endif; ?>
        <h2 class="text-center mb-4">Đăng Bài Viết</h2>
        <h4 class="text-center mb-4" style="color: red;">"Mỗi Lần Đăng Tin Tốn 10000 Coin"</h4>


        <form action="/articles-create" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="mb-3">
                <label for="title" class="form-label">Tiêu đề</label>
                <input type="text" name="title" id="title" class="form-control" required>
            </div>
            
            <div class="form-group">
                <label for="content" class="form-label">Content</label>
                <textarea class="form-control a4-size" id="editor" name="content" placeholder="Enter content" required></textarea>
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
                <button type="submit">Đăng bài</button>
            </div>
            <h6 class="mt-4 text-center" style=""><a href="<?php echo BASE_URL; ?>show_introduce">Hướng Dẫn Nạp Coin!</a></h6>
        </form>
    </div>
</div>
@endsection
