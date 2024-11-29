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

        $category = $this->homeModel->getCategory(); //HĐ

        $this->render('home', compact('featured', 'latest', 'category'));
    }

    public function about(){
        $this->render('about');
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

}