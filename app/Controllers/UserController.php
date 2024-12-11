<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\UserModel;
use App\Models\CategoryModel;

use App\Models\TransactionModel;



use PHPMailer\PHPMailer\PHPMailer;
// use PHPMailer\PHPMailer\Exception;

use Exception;

class UserController extends BaseController
{

    protected $userModel;
    private $transactionModel;
    private $categoryModel;

    public function __construct()
    {
        $this->userModel = new UserModel();
        $this->transactionModel = new TransactionModel();
        $this->categoryModel = new CategoryModel();
    }

    public function login()
    {
        try {
            if (session_status() == PHP_SESSION_NONE) {
                session_start();
            }
    
            if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['login-btn'])) {
                $email = $_POST['email'];
                $password = $_POST['pass'];
    
                $user = $this->userModel->getUserByEmail($email);
    
                if ($user && password_verify($password, $user['password_hash'])) {
    
                    $_SESSION['user'] = [
                        'id' => $user['id'],
                        'username' => $user['username'],
                        'role' => $user['role'],
                        'avatar' => $user['avatar'],
                        'coin' => $user['coins'],
                    ];
    
                    if ($user['role'] == 'admin' || $user['role'] == 'editor') {
                        header('Location: ' . BASE_URL_ADMIN . 'dashboard');
                    } else {
                        header('Location: ' . BASE_URL);
                    }
                    exit;
                } else {
                    $_SESSION['error_message'] = "Tên đăng nhập và mật khẩu không đúng!";
                    header('Location: ' . BASE_URL . 'show_login');
                    exit;
                }
            } else {
                $_SESSION['error_message'] = "Không có dữ liệu gửi lên!";
                header('Location: ' . BASE_URL . 'show_login');
                exit;
            }
        } catch (Exception $e) {
            dd($e->getMessage());
        }
    }
    
    public function logout()
    {
        session_start();
        session_destroy();
        header("Location: " . BASE_URL);
    }

    public function register()
    {
        session_start(); // Bắt đầu session để lưu thông báo
        try {
            if ($_SERVER['REQUEST_METHOD'] == 'POST') {

                $newUserName = trim($_POST['newUserName']);
                $newUserEmail = trim($_POST['newUserEmail']);
                $newUserPass = trim($_POST['newUserPass']);
                $newUserFullName = trim($_POST['newUserFullName']);

                $error = [];
                $success = '';

                // Kiểm tra đầu vào
                if (!$newUserName) $error[] = "Không có username";
                if (!$newUserEmail) $error[] = "Không có email";
                if (!$newUserPass) $error[] = "Không có Password";
                if (!$newUserFullName) $error[] = "Không có fullname";
                if (!$_FILES['avatar']['tmp_name']) $error[] = "Không có avatar";

                // Kiểm tra email
                if (!filter_var($newUserEmail, FILTER_VALIDATE_EMAIL)) {
                    $error[] = "Invalid email format";
                }

                // Kiểm tra độ dài password
                if (strlen($newUserPass) < 8) {
                    $error[] = "Password must be at least 8 characters";
                }

                // Xử lý file ảnh
                if (!empty($_FILES['avatar']['name'])) {
                    $target_dir = PATH_ROOT . "public/uploads/image/";
                    $imageFileType = strtolower(pathinfo($_FILES["avatar"]["name"], PATHINFO_EXTENSION));
                    $imageFileName = time() . '.' . $imageFileType;
                    $target_file = $target_dir . $imageFileName;

                    // Kiểm tra loại tệp và kích thước
                    $check = getimagesize($_FILES["avatar"]["tmp_name"]);
                    if ($check === false) $error[] = "Tệp không phải là hình ảnh.";
                    if ($_FILES["avatar"]["size"] > 5000000) $error[] = "Tệp hình ảnh quá lớn.";
                    if (!in_array($imageFileType, ['jpg', 'png', 'jpeg', 'gif'])) {
                        $error[] = "Chỉ cho phép các định dạng JPG, JPEG, PNG và GIF.";
                    }

                    // Nếu không có lỗi, di chuyển tệp ảnh
                    if (empty($error)) {
                        if (!is_dir($target_dir)) {
                            mkdir($target_dir, 0755, true); // Tạo thư mục nếu chưa tồn tại
                        }
                        if (!move_uploaded_file($_FILES["avatar"]["tmp_name"], $target_file)) {
                            $error[] = "Lỗi khi tải lên hình ảnh.";
                        }
                    }
                }

                // Mã hóa mật khẩu
                $hashedPass = password_hash($newUserPass, PASSWORD_ARGON2ID);

                // Nếu không có lỗi, thêm người dùng
                if (empty($error)) {
                    $result = $this->userModel->add($newUserName, $newUserFullName, $newUserEmail, $hashedPass, $imageFileName);
                    if ($result) {
                        $_SESSION['success'] = "Đăng ký thành công!";
                        $this->redirect(BASE_URL . 'show_register');
                    } else {
                        $_SESSION['error'] = ["Đăng ký thất bại. Vui lòng thử lại!"];
                        $this->redirect(BASE_URL . 'show_register');
                    }
                } else {
                    $_SESSION['error'] = $error;
                    $this->redirect(BASE_URL . 'show_register');
                }
            } else {
                $_SESSION['error'] = ["Không có dữ liệu gửi lên"];
                $this->redirect(BASE_URL . 'show_register');
            }
        } catch (Exception $e) {
            $_SESSION['error'] = ["Lỗi hệ thống: " . $e->getMessage()];
            $this->redirect(BASE_URL . 'show_register');
        }
    }

    public function forgot_password() {
        try{
            if($this->isPost() && isset($_POST['forgot-btn'])){
                $email = $_POST['forgotEmail'];

                $user = $this->userModel->getUserByEmail($email);

                if($user){
                    //tạo token
                    $token = bin2hex(random_bytes(50));
                    //tạo thời gian của token
                    $expries = date('U') + 1800;
                    //sql
                    $result = $this->userModel->add_token($email, $token, $expries);


                    //link change pass
                    $reset_link = BASE_URL . 'reset_password/'. $token ;

                    $mail = new PHPMailer(true);

                    

                }
            }
        }catch(Exception $e){
            dd($e->getMessage());
        }
    }

    public function form_coin(){
        session_start();
        if(isset($_SESSION['user'])){
            $this->render('submitCoin');
        } else {
            $this->redirect(BASE_URL. 'show_login');
        }
    }

    public function submitCoin()
    {
        session_start();
        $userId = $_SESSION['user']['id'];
        $amount = intval($_POST['amount']);
    
        if ($amount > 0) {
            if ($amount <= 1000000) { 
                $transactionModel = new TransactionModel();
                $result = $transactionModel->createTransaction($userId, $amount);
    
                if ($result) {
                    $_SESSION['success'] = "Yêu cầu nạp coin đã được gửi. Chờ admin duyệt.";
                } else {
                    $_SESSION['error'] = "Có lỗi xảy ra. Vui lòng thử lại.";
                    // echo $result;
                }
            } else {
                $_SESSION['error'] = "Số coin không được vượt quá 1,000,000.";
            }
        } else {
            $_SESSION['error'] = "Số coin không hợp lệ.";
        }
        $this->redirect(BASE_URL . 'form-coin');
    }
    
    public function from_create(){
        session_start();
        if(isset($_SESSION['user'])){
            $categories = $this->categoryModel->getAllCategories(); 

            $this->render('createArticle', ['categories' => $categories]);
        } else {
            $this->redirect(BASE_URL. 'show_login');
        }
    }
    
    ///
    public function createArticle() {
        session_start();
        $userId = $_SESSION['user']['id']; 
        $title = $_POST['title']; 
        $content = $_POST['content']; 
        $categoryId = $_POST['category_id']; 
        // Xử lý tải lên hình ảnh từ form
        $imageFileName = '';
        if (!empty($_FILES['image']['name'])) {
            $target_dir = PATH_ROOT . "public/uploads/image/";
            $imageFileType = strtolower(pathinfo($_FILES["image"]["name"], PATHINFO_EXTENSION));
            $imageFileName = time() . '.' . $imageFileType;
            $target_file = $target_dir . $imageFileName;

            // Kiểm tra kiểu tệp và kích thước tệp
            $check = getimagesize($_FILES["image"]["tmp_name"]);
            if ($check === false) {
                $errors[] = "Tệp không phải là hình ảnh.";
            }
            if ($_FILES["image"]["size"] > 5000000) {
                $errors[] = "Tệp hình ảnh quá lớn.";
            }
            if (!in_array($imageFileType, ['jpg', 'png', 'jpeg', 'gif'])) {
                $errors[] = "Chỉ cho phép các định dạng JPG, JPEG, PNG và GIF.";
            }

            // Nếu không có lỗi, di chuyển tệp hình ảnh
            if (empty($errors)) {
                if (!is_dir($target_dir)) {
                    mkdir($target_dir, 0755, true); // Tạo thư mục nếu chưa tồn tại
                }
                if (!move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)) {
                    $errors[] = "Lỗi khi tải lên hình ảnh.";
                }
            }
        }
        
    
        $user = $this->userModel->getCoins($userId);
    
        // Kiểm tra nếu người dùng không đủ coin
        if (!$user || $user['coins'] < 10000) {
            $_SESSION['error'] = "Không đủ coin để đăng bài!";
            $this->redirect(BASE_URL . 'from-create');      
        }
    
        // Số coin cần trừ
        $amount = 10000;
    
        // Trừ coin của người dùng
        $this->userModel->deductCoins($userId, $amount);
    
        // Cập nhật số coin trong session
        $_SESSION['user']['coin'] -= $amount;
    
        $this->transactionModel->createArticle([
            'title' => $title,
            'content' => $content,
            'author_id' => $userId,
            'category_id' => $categoryId,
            'image' => $imageFileName,
        ]);
    
        // Thông báo thành công
        $_SESSION['success'] = "Đăng bài thành công và đã trừ 10000 coin!";
        $this->redirect(BASE_URL . 'from-create');

    }
    



}
