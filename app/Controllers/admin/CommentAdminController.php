<?php

namespace App\Controllers\Admin;

use App\Models\Admin\CommentAdminModel;
use App\Controllers\BaseController;
use Exception;

class CommentAdminController extends BaseController
{
    protected $commentAdminModel;

    public function __construct()
    {
        $this->commentAdminModel = new CommentAdminModel();
    }

    // Hiển thị danh sách bình luận
    public function comment_list()
    {
        $comments = $this->commentAdminModel->list();

        $this->render('admin.comments.all_comments', compact('comments'));
    }

    // Xóa bình luận
    public function comment_delete($id)
    {
        try {
            $result = $this->commentAdminModel->del($id);

            if ($result === true) {
                echo json_encode(['status' => 'success', 'message' => 'Comment deleted successfully']);
            } else {
                echo json_encode(['status' => 'error', 'message' => 'An error occurred: ' . $result]);
            }
        } catch (Exception $e) {
            echo json_encode(['status' => 'error', 'message' => 'An unexpected error occurred: ' . $e->getMessage()]);
        }
    }
}
