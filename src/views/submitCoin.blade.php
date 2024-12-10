@extends('layouts.master')

@section('title', 'Giới thiệu - Tin tức Bất động sản')

@section('styles')
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f9;
            color: #333;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            color: #333;
            font-size: 2.5rem;
            margin-top: 40px;
        }

        img {
            display: block;
            margin: 20px auto;
            border-radius: 10px;
        }
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
       

        label {
            font-size: 1.2rem;
            margin-bottom: 10px;
            display: block;
        }

        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 1rem;
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
<h1>Nạp Coin</h1>
<div class="contact-section">
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


<img src="https://i.vdoc.vn/data/image/2017/11/23/cach-tao-ma-qr-code.png" alt="QR Code" height="100" width="100">
<!-- Form nhập số coin -->
<form action="/submit-coin" method="POST">
<label for="amount">
    Quy đổi 10 coin = 1000đ
</label>
    <label for="amount">Số lượng coin muốn nạp:</label>
    <input type="number" id="amount" name="amount" min="1" required>
    <button type="submit">Nạp Coin</button>
</form>
</div>
@endsection
