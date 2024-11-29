@extends('layouts.master')

@section('title', 'Giới thiệu - Tin tức Bất động sản')

@section('styles')
    <style>

    </style>
@endsection

@section('content')
<h1>Nạp Coin</h1>

<!-- Form nhập số coin -->
<form action="/submit-coin" method="POST">
    <label for="amount">Số lượng coin muốn nạp:</label>
    <input type="number" id="amount" name="amount" min="1" required>
    <button type="submit">Nạp Coin</button>
</form>
@endsection
