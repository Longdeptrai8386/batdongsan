@extends('layouts.master')

@section('title', 'Liên hệ - Tin tức Bất động sản')

@section('styles')
    <style>
        .contact-section {
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 8px;
        }
        .contact-section h1 {
            color: #2c3e50;
            margin-bottom: 20px;
        }
        .contact-section p {
            color: #7f8c8d;
            font-size: 16px;
            line-height: 1.6;
        }
        .contact-form {
            margin-top: 20px;
        }
        .contact-form input,
        .contact-form textarea,
        .contact-form button {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 14px;
        }
        .contact-form button {
            background-color: #2c3e50;
            color: #fff;
            cursor: pointer;
        }
        .contact-form button:hover {
            background-color: #34495e;
        }
    </style>
@endsection

@section('content')
    <div class="contact-section">
        <h1>Liên hệ với chúng tôi</h1>
        <p>
            Nếu bạn có bất kỳ câu hỏi nào hoặc cần thêm thông tin, đừng ngần ngại liên hệ với chúng tôi. 
            Chúng tôi luôn sẵn sàng lắng nghe và hỗ trợ bạn!
        </p>
        <div class="contact-form">
            <form action="" method="POST">
                @csrf
                <input type="text" name="name" placeholder="Họ và tên" required>
                <input type="email" name="email" placeholder="Email của bạn" required>
                <textarea name="message" rows="5" placeholder="Nội dung liên hệ" required></textarea>
                <button type="submit">Gửi liên hệ</button>
            </form>
        </div>
    </div>
@endsection
