@extends('layouts.master')

@section('title', 'Giới thiệu - Tin tức Bất động sản')

@section('styles')
    <style>
        .intro-section {
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 8px;
        }
        .intro-section h1 {
            color: #2c3e50;
        }
        .intro-section p {
            color: #7f8c8d;
            font-size: 16px;
            line-height: 1.6;
        }
    </style>
@endsection

@section('content')
    <div class="intro-section">
        <h1>Chào mừng đến với Trang Tin Tức Bất Động Sản</h1>
        <p>
            Đây là trang web chuyên cung cấp thông tin, tin tức và phân tích chuyên sâu về thị trường bất động sản tại Việt Nam. 
            Chúng tôi luôn cập nhật những tin tức mới nhất về các dự án, xu hướng đầu tư, và biến động giá cả trong ngành bất động sản.
        </p>
        <p>
            Với đội ngũ chuyên gia giàu kinh nghiệm, chúng tôi cam kết mang đến cho bạn những thông tin chính xác, kịp thời và hữu ích nhất.
            Hãy cùng khám phá thị trường bất động sản và tìm kiếm cơ hội đầu tư phù hợp với bạn ngay hôm nay!
        </p>
    </div>
@endsection
