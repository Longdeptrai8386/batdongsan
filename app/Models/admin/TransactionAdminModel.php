<?php

namespace App\Models\Admin;

use App\Models\BaseModel;

class TransactionAdminModel extends BaseModel
{
    // Lấy danh sách các giao dịch đang chờ duyệt
    public function listPendingTransactions(): array
    {
        $sql = "SELECT ct.id, u.id as userId, u.username, ct.amount, ct.created_at 
                FROM coin_transactions ct
                JOIN users u ON u.id = ct.user_id
                WHERE ct.status = 'pending'";
        return $this->query($sql);
    }

    // Cập nhật trạng thái giao dịch
    public function updateTransactionStatus(int $transactionId, string $status): bool
    {
        $sql = "UPDATE coin_transactions SET status = ? WHERE id = ?";
        return $this->execute($sql, [$status, $transactionId]);
    }
}
