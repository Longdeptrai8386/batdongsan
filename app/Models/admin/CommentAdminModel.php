<?php

namespace App\Models\Admin;

use App\Models\BaseModel;

class CommentAdminModel extends BaseModel
{
    protected $table = 'comments';

    // Lấy danh sách bình luận
    public function list()
    {
        return $this->findAll($this->table);
    }

    // Xóa bình luận theo ID
    public function del($id)
    {
        return $this->delete($this->table, $id);
    }
}
