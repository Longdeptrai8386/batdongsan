<?php

namespace App\Controllers\Admin;

use App\Controllers\BaseController;
use App\Models\Admin\UserAdminModel;
use Exception;

class UserAdminController extends BaseController
{
    protected $userAdminModel;

    public function __construct()
    {
        $this->userAdminModel = new UserAdminModel;
    }

    // Kiểm tra quyền truy cập
    private function checkPermissions()
    {
        start_session();
        if ($_SESSION['user']['role'] === 'editor') {
            $_SESSION['toastr'] = ['type' => 'error', 'message' => 'Bạn không có quyền sử dụng chức năng này.'];
            $this->redirect(BASE_URL_ADMIN . 'dashboard');
            exit;
        }
    }

    // Hiển thị danh sách người dùng
    public function user_list()
    {
        $users = $this->userAdminModel->list();
        $this->render('admin.users.all_user', compact('users'));
    }

    // Xóa người dùng
    public function user_delete($id)
    {
        try {

            $this->checkPermissions();
            

            if (session_status() == PHP_SESSION_NONE) {
                session_start();
            }
    
            // Lấy thông tin người dùng hiện tại
            $currentUserId = $_SESSION['user']['id'] ?? null;
    

            if (!$currentUserId) {
                echo json_encode(['status' => 'error', 'message' => 'Bạn chưa đăng nhập']);
                return;
            }
    
 
            $user = $this->userAdminModel->find('users', $id);
            $error = [];
    

            if (!$user) {
                echo json_encode(['status' => 'error', 'message' => 'Không tìm thấy người dùng']);
                return;
            }

            if ($id == $currentUserId) {
                echo json_encode(['status' => 'error', 'message' => 'Bạn không thể xoá chính tài khoản của mình']);
                return;
            }
    

            if ($user['position'] == 1) {
                echo json_encode(['status' => 'error', 'message' => 'Không thể xoá tài khoản đặc biệt']);
                return;
            }

            if (!empty($user['avatar'])) {
                $upload_dir = PATH_ROOT . "public/uploads/image/";
                $target = $upload_dir . $user['avatar'];
    
                if (file_exists($target)) {
                    unlink($target); 
                } else {
                    $error[] = "Không tìm thấy file";
                }
            }
    

            if (empty($error)) {
                $result = $this->userAdminModel->del($id); 
                if ($result) {
                    echo json_encode(['status' => 'success', 'message' => 'User deleted successfully']);
                } else {
                    echo json_encode(['status' => 'error', 'message' => 'User delete failed']);
                }
            } else {
                // Nếu có lỗi, trả về thông báo lỗi
                echo json_encode(['status' => 'error', 'message' => $error]);
            }
        } catch (Exception $e) {
            // Xử lý ngoại lệ
            dd($e->getMessage());
        }
    }
    

    


    public function user_add()
    {
        try {
            $this->checkPermissions(); // Kiểm tra quyền
            start_session();
            if ($this->isPost() && isset($_POST['btn-add'])) {
                $username = $_POST['newUserName'];
                $fullname = $_POST['newUserFullName'];
                $email = $_POST['newUserEmail'];
                $password = $_POST['newUserPassword'];
                $role = $_POST['newUserRole'];
                $avatar = $_FILES['newUserAvatar'];
                $error = [];

                // Kiểm tra các trường thông tin bắt buộc
                if (empty($username)) $error[] = "Tên đăng nhập không được để trống";
                if (empty($fullname)) $error[] = "Họ và tên không được để trống";
                if (empty($email)) $error[] = "Email không được để trống";
                if (empty($password)) $error[] = "Mật khẩu không được để trống";
                if (empty($role)) $error[] = "Vai trò không được để trống";
                if (empty($avatar['name'])) $error[] = "Ảnh đại diện không được để trống";

                if (empty($error)) {
                    $handedPass = password_hash($password, PASSWORD_ARGON2ID);
                    $upload_dir = PATH_ROOT . "public/uploads/image/";
                    $imageFileType = strtolower(pathinfo($avatar['name'], PATHINFO_EXTENSION));
                    $imageFileName = time() . '.' . $imageFileType;
                    $target = $upload_dir . $imageFileName;

                    // Upload ảnh đại diện
                    if (!move_uploaded_file($avatar['tmp_name'], $target)) {
                        $error[] = "Upload ảnh thất bại";
                    }
                }

                if (empty($error)) {
                    // Thêm người dùng vào cơ sở dữ liệu
                    $result = $this->userAdminModel->add($username, $fullname, $email, $handedPass, $role, $imageFileName);
                    $_SESSION['toastr'] = $result ? ['type' => 'success', 'message' => 'User added successfully'] : ['type' => 'error', 'message' => 'Failed to add user'];
                } else {
                    $_SESSION['toastr'] = ['type' => 'error', 'message' => implode('<br>', $error)];
                }
            } else {
                $_SESSION['toastr'] = ['type' => 'error', 'message' => 'No Data'];
            }
            $this->redirect(BASE_URL_ADMIN . 'user-list');
        } catch (Exception $e) {
            dd($e->getMessage());
        }
    }

    // Cập nhật thông tin người dùng
    public function user_update()
    {
        try {
            $this->checkPermissions(); // Kiểm tra quyền
            start_session();
            if ($this->isPost() && isset($_POST['btn-edit'])) {
                $id = $_POST['id'];
                $username = $_POST['userName'];
                $fullname = $_POST['userFullName'];
                $email = $_POST['userEmail'];
                $role = $_POST['role'];
                $avatar = $_FILES['avatar'];
                $user = $this->userAdminModel->find('users', $id);
                $currentAvatar = $user['avatar'];
                $error = [];
    
                // **Kiểm tra nếu tài khoản có position = 1**
                if ($user['position'] == 1) {
                    $_SESSION['toastr'] = ['type' => 'error', 'message' => 'Không thể chỉnh sửa tài khoản đặc biệt.'];
                    $this->redirect(BASE_URL_ADMIN . 'user-list');
                    return;
                }
    
                // Kiểm tra các trường thông tin bắt buộc
                if (empty($username)) $error[] = "Tên đăng nhập không được để trống";
                if (empty($fullname)) $error[] = "Họ và tên không được để trống";
                if (empty($email)) $error[] = "Email không được để trống";
                if (empty($role)) $error[] = "Vai trò không được để trống";
    
                // Xử lý avatar nếu có
                if (empty($error)) {
                    $upload_dir = PATH_ROOT . "public/uploads/image/";
    
                    if (!empty($avatar['name'])) {
                        $imageFileType = strtolower(pathinfo($avatar['name'], PATHINFO_EXTENSION));
                        $imageFileName = time() . "." . $imageFileType;
                        $target = $upload_dir . $imageFileName;
    
                        // Xóa avatar cũ nếu có
                        if (file_exists($upload_dir . $currentAvatar)) {
                            unlink($upload_dir . $currentAvatar);
                        }
    
                        // Upload avatar mới
                        if (!move_uploaded_file($avatar['tmp_name'], $target)) {
                            $error[] = "Lỗi upload ảnh";
                        }
                    }
                }
    
                // Nếu không có lỗi, cập nhật thông tin
                if (empty($error)) {
                    $result = $this->userAdminModel->updt(
                        $id,
                        $username,
                        $fullname,
                        $email,
                        $role,
                        $imageFileName ?? $currentAvatar
                    );
    
                    $_SESSION['toastr'] = $result
                        ? ['type' => 'success', 'message' => 'Cập nhật thông tin người dùng thành công.']
                        : ['type' => 'error', 'message' => 'Cập nhật thông tin thất bại.'];
                } else {
                    $_SESSION['toastr'] = ['type' => 'error', 'message' => implode(', ', $error)];
                }
            }
    
            $this->redirect(BASE_URL_ADMIN . 'user-list');
        } catch (Exception $e) {
            dd($e->getMessage());
        }
    }
    

    // Đăng xuất người dùng
    public function logout()
    {
        start_session();
        session_destroy();
        $this->redirect(BASE_URL);
    }
}
