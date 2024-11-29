<?php

namespace App\Controllers;

use App\Controllers\BaseController;

use App\Models\HomeModel;


class HomeController extends BaseController{

    protected $homeModel;

    public function __construct(){
        $this->homeModel = new HomeModel();
    }


    public function home(){

        $featured = $this->homeModel->featured();

        $latest = $this->homeModel->latest();

        $category = $this->homeModel->getCategory();

        // Tog
        session_start();
        $_SESSION['categories'] = $category;

        // foreach($_SESSION['category'] as $category){
        //     echo $category['name'];
        // }
        // die();

        $this->render('home', compact('featured', 'latest'));
    }

    public function show($id){
        $data = $this->homeModel->getArtById($id);
        $comments = $this->homeModel->getCmtById($id);

        $this->homeModel->updateView($id);

        $this->render('news', compact('data', 'comments'));
    }
    public function introduce(){
        $this->render('introduce');
    }
    public function contact(){
        $this->render('contact');
    }
    

    //BDS HĐ
    public function category(){
        $latest = $this->homeModel->latest();
        $this->render('category', compact('latest'));
    }

    public function categoryDetail($id){
        $latest = $this->homeModel->getArticlesByCategoryId($id);
        $this->render('category', compact('latest'));
    }
}