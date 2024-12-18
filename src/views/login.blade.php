<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/css/bootstrap.min.css" integrity="sha512-jnSuA4Ss2PkkikSOLtYs8BlYIeeIK1h99ty4YfvRPAlzr377vr3CXDb7sb7eEEBYjDtcYj+AjBH3FLv5uSJuXg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Login</title>
    <style>
        .form-group{
            margin-top: 15px;
        }
    </style>
</head>

<body>

    <?php
    // Kiểm tra xem có thông báo lỗi không và hiển thị nếu có
    if (session_status() == PHP_SESSION_NONE) {
        session_start();
    }

    if (isset($_SESSION['error_message'])) {
        // Hiển thị thông báo lỗi
        echo "<div class='alert alert-danger'>{$_SESSION['error_message']}</div>";
        // Xóa thông báo lỗi sau khi hiển thị để tránh hiện lại khi reload trang
        unset($_SESSION['error_message']);
    }
    ?>

    <div class="form-login mx-auto mt-3 p-5 shadow-lg rounded-3" style="width: 580px;">
        <form action="<?php echo BASE_URL ?>login" method="post">
            
            <h2>Login</h2>

            <div class="form-group">
                <label for="">Email:</label>
                <input type="email" class="form-control form-control-sm" name="email" id=""  placeholder="Nhập email">
            </div>

            <div class="form-group">
                <label for="">Password:</label>
                <input type="password" class="form-control form-control-sm" name="pass" id=""  placeholder="Nhập mật khẩu">
            </div>

            <div class="form-group">
                <button type="submit" name='login-btn' class="btn btn-outline-success">Đăng nhập</button>
            </div>

        </form>

        <h6 class="mt-4 text-center">Bạn chưa có tài khoản? <a href="<?= BASE_URL ?>show_register">Đăng kí ngay!</a></h6>
        <h6 class="mt-4 text-center"><a href="<?= BASE_URL ?>show_forgot_password">Quên Mật Khẩu??</a></h6>

    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/js/bootstrap.min.js" integrity="sha512-ykZ1QQr0Jy/4ZkvKuqWn4iF3lqPZyij9iRv6sGqLRdTPkY69YX6+7wvVGmsdBbiIfN/8OdsI7HABjvEok6ZopQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</body>

</html>
