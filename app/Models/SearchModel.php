<?php
namespace App\Models;
use App\Models\BaseModel;
class SearchModel extends BaseModel
{ 

    public function searchPosts($searchData)
    {
        return $this->search('articles', $searchData);
    }

    public function searchUsers($searchData)
    {
        return $this->search('users', $searchData);
    }

}