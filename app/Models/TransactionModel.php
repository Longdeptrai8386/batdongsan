<?php 
namespace App\Models;

class TransactionModel extends BaseModel
{
    public function createTransaction($userId, $amount)
    {

        $sql = "INSERT INTO coin_transactions (user_id, amount, status) VALUES (?, ?, 'pending')";
        return $this->execute($sql, [$userId, $amount]);
    }

    public function getPendingTransactions()
    {
        $sql = "SELECT ct.id, u.username, ct.amount, ct.created_at 
                FROM coin_transactions ct 
                JOIN users u ON ct.user_id = u.id 
                WHERE ct.status = 'pending'";
        return $this->query($sql);
    }

    public function getTransactionById($transactionId)
    {
        $sql = "SELECT * FROM coin_transactions WHERE id = ?";
        return $this->fetch($sql, [$transactionId]);
    }

    public function updateTransactionStatus($transactionId, $status)
    {
        $sql = "UPDATE coin_transactions SET status = ? WHERE id = ?";
        return $this->execute($sql, [$status, $transactionId]);
    }
}

?>