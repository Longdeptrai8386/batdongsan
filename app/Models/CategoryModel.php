<?php
namespace App\Models;

use App\Models\BaseModel;


class CategoryModel extends BaseModel
{

    public function getAllCategories()
    {
        $sql = "SELECT * FROM categories";
        return $this->query($sql);
    }
}

?>  