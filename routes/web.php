<?php

require_once __DIR__ . '/../vendor/autoload.php';
require_once __DIR__ . '/../app/Support/Support.php';
require_once __DIR__ . '/../config/config.php';

use Phroute\Phroute\RouteCollector;
use Phroute\Phroute\Dispatcher;
use App\Controllers\HomeController;
use App\Controllers\UserController;
use App\Controllers\CommentController;
use App\Middleware\AuthMiddleware;

use App\Controllers\TransactionController;

use App\Controllers\Admin\DashboardAdminController;
use App\Controllers\Admin\ArticleAdminController;
use App\Controllers\Admin\CategoryAdminController;
use App\Controllers\Admin\UserAdminController;
use App\Controllers\Admin\CommentAdminController;
use App\Controllers\Admin\TransactionAdminController;
use App\Controllers\SearchController;



$url = $_GET['url'] ?? '/';

try {
    $router = new RouteCollector();
    //! route of home
    $router->get('/', [HomeController::class, 'home']);
    $router->get('/show_login', function () {
        require_once PATH_ROOT . "src/views/login.blade.php";
    });
    $router->get('/search', [SearchController::class, 'index']  );
    
    $router->get('/show_introduce', [HomeController::class, 'introduce']);
    $router->get('/show_contact', [HomeController::class, 'contact']);

    $router->get('/category', [HomeController::class, 'category']);
    $router->get('/category/{id}', [HomeController::class, 'categoryDetail']);

    $router->post('/login', [UserController::class, 'login']);
    $router->get('/logout', [UserController::class, 'logout']);

        // User routes - nạp coin
    $router->get('/form-coin', [UserController::class, 'form_coin']);
    $router->post('/submit-coin', [UserController::class, 'submitCoin']);
    // create đăng tin user
    $router->get('/from-create', [UserController::class, 'from_create']);
    $router->post('/articles-create', [UserController::class, 'createArticle']);
    $router->get('/unauthorized', function() {
        echo "Unauthorized access.";
    });

    $router->get('/show_register', function(){
        require_once PATH_ROOT . "src/views/register.blade.php";
    });

    $router->post('/register', [UserController::class,'register']);

    $router->get('/show/{id}', [HomeController::class, 'show']);

    $router->post('/comment', [CommentController::class, 'comment']);
    




    $router->get('/show_forgot_password', function(){
        require_once PATH_ROOT . "src/views/forgot_password.blade.php";
    });

    // $route->post('/reset_password', [UserController::class, 'forgot_password']);

    //! route of admin

    $router->group(['before' => [AuthMiddleware::class, 'handle']], function(RouteCollector $router) {
        //? route of dashboard
        $router->get('admin/dashboard', [DashboardAdminController::class, 'dashboard']);
        //? route of user
        $router->get('admin/user-list', [UserAdminController::class, 'user_list']);
        $router->get('admin/user-del/{id}', [UserAdminController::class, 'user_delete']);

        $router->post('admin/user-update', [UserAdminController::class, 'user_update']);

        $router->post('admin/user-add', [UserAdminController::class, 'user_add']);
        
        $router->get('admin/profile', [UserAdminController::class, 'profile']);
        $router->post('admin/profile-update', [UserAdminController::class, 'profile_update']);
        $router->get('admin/logout', [UserAdminController::class, 'logout']);
        //? route of article
        $router->get('admin/article-list', [ArticleAdminController::class, 'article_list']);
        $router->get('admin/article-del/{id}', [ArticleAdminController::class, 'article_delete']);
        $router->get('admin/article-edit/{id}', [ArticleAdminController::class, 'article_edit']);
        $router->post('admin/article-update', [ArticleAdminController::class, 'article_update']);
        $router->get('admin/article-form-add', [ArticleAdminController::class, 'form_add']);
        $router->post('admin/article-add', [ArticleAdminController::class, 'article_add']);
        //? route of category
        $router->get('admin/category-list', [CategoryAdminController::class, 'category_list']);
        $router->get('admin/category-del/{id}', [CategoryAdminController::class, 'category_delete']);
        $router->post('admin/category-update', [CategoryAdminController::class, 'category_update']);
        $router->post('admin/category-add', [CategoryAdminController::class, 'category_add']);
        //? route of comment
        $router->get('admin/comment-list', [CommentAdminController::class, 'comment_list']);
        $router->get('admin/comment-del/{id}', [CommentAdminController::class, 'comment_delete']);
         // Coin transaction management (nạp coin)
         $router->get('admin/coin-transactions', [TransactionAdminController::class, 'transaction_list']);
         $router->post('admin/process-transaction', [TransactionAdminController::class, 'processTransaction']);
    });



    $routeData = $router->getData();
    
    // Kiểm tra dữ liệu router
    // dd($routeData);

    $dispatcher = new Dispatcher($router->getData());

    $response = $dispatcher->dispatch($_SERVER['REQUEST_METHOD'], $url);

    echo $response;
} catch (Phroute\Phroute\Exception\HttpRouteNotFoundException $e) {
    dd($e->getMessage());
} catch (Phroute\Phroute\Exception\HttpMethodNotAllowedException $e) {
    dd($e->getMessage());
} catch (Exception $e) {
    dd($e->getMessage());
}