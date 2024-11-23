<?php

namespace App\Controllers;

use App\Controllers\BaseController;

use App\Models\CommentModel;

use Exception;

class CommentController extends BaseController
{
    protected $commentModel;

    public function __construct()
    {
        $this->commentModel = new CommentModel();
    }


    public function comment()
    {
        try {
            start_session();
            if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['cmt-btn'])) {

                $article_id = $_POST['article_id'];

                $content = $_POST['content'];

                $user_id = $_SESSION['user']['id'];

                // Kiểm tra xem các giá trị không rỗng và hợp lệ
                if (empty($article_id) || empty($content) || empty($user_id)) {
                    throw new Exception("Invalid input data.");
                }

                $result = $this->commentModel->add($article_id, $user_id, $content);

                if ($result) {
                    header('Location:' . BASE_URL . 'show/'. $article_id);
                }

                // $cmt = $this->commentModel->find('comments', $cmt_id);


                // var_dump($cmt);
                // Đặt header để xác định phản hồi là JSON
                // header('Content-Type: application/json');
                // echo json_encode($cmt);
                // exit; 

            }
        } catch (Exception $e) {
            dd($e->getMessage());
        }
    }
}
