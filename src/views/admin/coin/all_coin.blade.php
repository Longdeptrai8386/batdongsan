@extends('admin.layouts.master')

@section('title', 'Tất cả giao dịch nạp Coin')

@section('content')
<h2>Danh sách giao dịch chờ duyệt</h2>


<table border="1" cellpadding="10" cellspacing="0" style="width: 100%; border-collapse: collapse;">
    <thead>
        <tr>
            <th>ID</th>
            <th>Username</th>
            <th>Số Coin</th>
            <th>Thời gian yêu cầu</th>
            <th>Hành động</th>
        </tr>
    </thead>
    <tbody>
        @foreach($transactions as $transaction)
            <tr>
                <td>{{ $transaction['id'] }}</td>
                <td>{{ $transaction['username'] }}</td>
                <td>{{ $transaction['amount'] }}</td>
                <td>{{ $transaction['created_at'] }}</td>
                <td>
                    <form method="POST" action="{{ route('admin/process-transaction') }}" style="display:inline-block;">
                        @csrf
                        <input type="hidden" name="userId" value="{{ $transaction['userId'] }}">
                        <input type="hidden" name="transaction_id" value="{{ $transaction['id'] }}">
                        <input type="hidden" name="amount" value="{{ $transaction['amount'] }}">
                        <input type="hidden" name="action" value="approved">
                        <button type="submit" class="btn btn-success">Duyệt</button>
                    </form>
                    <form method="POST" action="{{ route('admin/process-transaction') }}" style="display:inline-block;">
                        @csrf
                        <input type="hidden" name="userId" value="{{ $transaction['userId'] }}">
                        <input type="hidden" name="transaction_id" value="{{ $transaction['id'] }}">
                        <input type="hidden" name="amount" value="{{ $transaction['amount'] }}">
                        <input type="hidden" name="action" value="rejected">
                        <button type="submit" class="btn btn-danger">Từ chối</button>
                    </form>
                </td>
            </tr>
        @endforeach
    </tbody>
</table>

@endsection
