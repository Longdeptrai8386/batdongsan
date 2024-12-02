<?php 
  namespace App\Controllers;
  use App\Controllers\BaseController;
  use App\Models\HomeModel;
  use App\Models\SearchModel;
  use Controller;
  
  class SearchController extends BaseController
  {
    public $model;
    public $homeModel;

    public function __construct() 
    {
        $this->model = new SearchModel();
        $this->homeModel = new HomeModel();
    }
      public function index()
      {

          $keyword = $_GET['keyword'] ?? null;
          $table = "articles";
          if (isset($keyword) == false) {
            $this->redirect('/');
          }
          
          $sql = "SELECT a.id, a.title, a.image, a.created_at,
          u.full_name, c.name AS category,
          IFNULL(v.view_count, 0) AS view_count,
          COUNT(com.id) AS comment_count
   FROM articles a
   INNER JOIN users u ON a.author_id = u.id
   INNER JOIN categories c ON a.category_id = c.id
   LEFT JOIN article_views v ON a.id = v.article_id
   LEFT JOIN comments com ON a.id = com.article_id
   WHERE title LIKE \"%$keyword%\"
   GROUP BY a.id, a.title, a.image, a.created_at, u.full_name, c.name, v.view_count  -- Add a.id here
   ORDER BY a.created_at DESC
   LIMIT 5;";

          $latest  = $this->model->query($sql);
          
          $featured = $this->homeModel->featured();
  
          $category = $this->homeModel->getCategory(); //HĐ
  
          $this->render('home', compact('featured', 'latest', 'category'));
      }
  }
?>