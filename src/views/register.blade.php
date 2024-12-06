<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Form</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/css/bootstrap.min.css"
        integrity="sha512-jnSuA4Ss2PkkikSOLtYs8BlYIeeIK1h99ty4YfvRPAlzr377vr3CXDb7sb7eEEBYjDtcYj+AjBH3FLv5uSJuXg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
        integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>
    <style>
        .form-group {
            margin-top: 15px;
        }

        .input-group .form-control.is-invalid {
            border-right: 0;
        }

        .input-group .input-group-append .btn {
            border-left: 0;
        }

        .input-group .invalid-feedback {
            width: 100%;
            margin-top: 0.25rem;
            margin-bottom: 0;
            display: block;
            position: absolute;
            bottom: -20px;
        }

        .position-relative {
            position: relative;
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css"
    integrity="sha512-vKMx8UnXk60zUwyUnUPM3HbQo8QfmNx7+ltw8Pm5zLusl1XIfwcxo8DbWCqMGKaWeNxWA8yrx5v3SaVpMvR3CA=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body>
    <?php
        session_start();
        if (!empty($_SESSION['success'])) {
            echo "<div class='alert alert-success'>" . $_SESSION['success'] . "</div>";
            unset($_SESSION['success']); // Xóa thông báo sau khi hiển thị
        }

        if (!empty($_SESSION['error'])) {
            foreach ($_SESSION['error'] as $err) {
                echo "<div class='alert alert-danger'>" . $err . "</div>";
            }
            unset($_SESSION['error']); // Xóa lỗi sau khi hiển thị
        }
    ?>


    <div class="form-login mx-auto mt-3 p-5 shadow-lg rounded-3" style="width: 580px;">

        <form id="registerForm" action="<?= BASE_URL ?>register" method="post" enctype="multipart/form-data">

            <h2>Register</h2>

            <div class="form-group">
                <label for="newUserName">User Name:</label>
                <input type="text" class="form-control form-control-sm" name="newUserName" id="newUserName"
                    placeholder="Nhập tên của bạn...">
            </div>

            <div class="form-group">
                <label for="newUserName">Full Namee:</label>
                <input type="text" class="form-control form-control-sm" name="newUserFullName"
                    placeholder="Nhập tên của bạn...">
            </div>

            <div class="form-group">
                <label for="newUserEmail">Email:</label>
                <input type="email" class="form-control form-control-sm" name="newUserEmail" id="newUserEmail"
                    placeholder="Nhập email...">
            </div>

            <div class="form-group">
                <label for="newUserPass">Password:</label>
                <div class="input-group">
                    <input type="password" class="form-control form-control-sm me-1" name="newUserPass" id="newUserPass"
                        placeholder="Nhập mật khẩu...">
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="button" id="togglePassword">
                            <i class="fas fa-eye"></i>
                        </button>
                    </div>
                </div>
            </div>


            <div class="form-group">
                <label for="">Avatar:</label>
                <input type="file" class="form-control-file" name="avatar">
            </div>


            <div class="form-group mt-4">
                <button type="submit" class="btn btn-outline-primary">Đăng Kí</button>
            </div>

        </form>

        <h6 class="mt-4 text-center">Bạn đã có tài khoản? <a href="<?= BASE_URL ?>show_login">Đăng nhập ngay!</a></h6>
    </div>

    <script>
        $(document).ready(function() {
            $("#registerForm").validate({
                rules: {
                    newUserName: {
                        required: true,
                        minlength: 2
                    },
                    newUserEmail: {
                        required: true,
                        email: true
                    },
                    newUserPass: {
                        required: true,
                        minlength: 8
                    }
                },
                messages: {
                    newUserName: {
                        required: "Please enter your name",
                        minlength: "Your name must be at least 2 characters long"
                    },
                    newUserEmail: {
                        required: "Please enter your email",
                        email: "Please enter a valid email address"
                    },
                    newUserPass: {
                        required: "Please provide a password",
                        minlength: "Your password must be at least 6 characters long"
                    }
                },
                errorElement: "div",
                errorPlacement: function(error, element) {
                    error.addClass("invalid-feedback");
                    error.insertAfter(element);
                },
                highlight: function(element, errorClass, validClass) {
                    $(element).addClass("is-invalid").removeClass("is-valid");
                },
                unhighlight: function(element, errorClass, validClass) {
                    $(element).addClass("is-valid").removeClass("is-invalid");
                }
            });


            $('#togglePassword').on('click', function() {
                const passwordField = $('#newUserPass');
                const passwordFieldType = passwordField.attr('type');
                const icon = $(this).find('i');

                if (passwordFieldType === 'password') {
                    passwordField.attr('type', 'text');
                    icon.removeClass('fa-eye').addClass('fa-eye-slash');
                } else {
                    passwordField.attr('type', 'password');
                    icon.removeClass('fa-eye-slash').addClass('fa-eye');
                }
            });


        });
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"
    integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw=="
    crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/js/bootstrap.min.js"
        integrity="sha512-ykZ1QQr0Jy/4ZkvKuqWn4iF3lqPZyij9iRv6sGqLRdTPkY69YX6+7wvVGmsdBbiIfN/8OdsI7HABjvEok6ZopQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    
</body>

</html>
