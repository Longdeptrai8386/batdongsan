<?php 
namespace App\Controllers\Admin;

use App\Models\TransactionModel;
use App\Models\UserModel;
use App\Controllers\BaseController;

class AdminController extends BaseController
{
    public function showTransactions()
    {
        $transactionModel = new TransactionModel();
        $transactions = $transactionModel->getPendingTransactions();

        return $this->render('admin/transactions', ['transactions' => $transactions]);
    }

    // public function processTransaction()
    // {
    //     $transactionId = intval($_POST['transaction_id']);
    //     $action = $_POST['action'];

    //     $transactionModel = new TransactionModel();
    //     $userModel = new UserModel();

    //     if ($action === 'approve') {
    //         $transaction = $transactionModel->getTransactionById($transactionId);

    //         if ($transaction) {
    //             $userModel->addCoins($transaction['user_id'], $transaction['amount']);
    //             $transactionModel->updateTransactionStatus($transactionId, 'completed');
    //             echo "Giao dịch đã được duyệt.";
    //         } else {
    //             echo "Giao dịch không hợp lệ.";
    //         }
    //     } elseif ($action === 'deny') {
    //         $transactionModel->updateTransactionStatus($transactionId, 'failed');
    //         echo "Giao dịch đã bị từ chối.";
    //     }
    // }
}

?>