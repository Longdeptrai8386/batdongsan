<?php

namespace App\Controllers\Admin;

use App\Models\Admin\TransactionAdminModel; // Import model xử lý giao dịch
use App\Controllers\BaseController;
use Exception;
use App\Models\UserModel;

class TransactionAdminController extends BaseController
{
    protected $transactionAdminModel;
    protected $userAdminModel; 

    public function __construct()
    {
        $this->transactionAdminModel = new TransactionAdminModel();
        $this->userAdminModel = new UserModel();
    }

    // Hiển thị danh sách giao dịch chờ duyệt
    public function transaction_list()
    {
        // Lấy danh sách giao dịch từ model
        $transactions = $this->transactionAdminModel->listPendingTransactions();

        // Render view với dữ liệu giao dịch
        $this->render('admin.coin.all_coin', compact('transactions'));
    }

    // Duyệt hoặc từ chối giao dịch
    public function processTransaction()
    {
        $transactionId = $_POST['transaction_id'];
        $action = $_POST['action'] ?? null;
        $userId = $_POST['userId'];
        $amount = $_POST['amount'];

        if (!$transactionId) {
            $message = 'Transaction ID or action missing';
            return $this->redirect(BASE_URL_ADMIN . 'coin-transactions?status=error&message=' . urlencode($message));
        }

        try {
            $status = $action == 'approved' ? 'approved' : 'rejected';
            $result = $this->transactionAdminModel->updateTransactionStatus($transactionId, $status);

            if ($action == 'approved') {
                $this->userAdminModel->addCoins($userId, $amount);
            }

            if ($result) {
                $message = $status === 'approved' ? 'Giao Dịch Đã Được Phê Duyệt!' : 'Từ Chối Giao Dịch!';
                return $this->redirect(BASE_URL_ADMIN . 'coin-transactions?status=success&message=' . urlencode($message));
            } else {
                $message = 'An error occurred while processing the transaction';
                return $this->redirect(BASE_URL_ADMIN . 'coin-transactions?status=error&message=' . urlencode($message));
            }
        } catch (Exception $e) {
            $message = 'An unexpected error occurred: ' . $e->getMessage();
            return $this->redirect(BASE_URL_ADMIN . 'coin-transactions?status=error&message=' . urlencode($message));
        }
    }
}
