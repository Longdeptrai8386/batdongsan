<?php
// Configuration settings
// Biến môi trường, dùng chung toàn hệ thống
// Khai báo dưới dạng HẰNG SỐ để không phải dùng $GLOBALS

define('BASE_URL'       , 'http://batdongsan.test/');
define('BASE_URL_ADMIN'       , 'http:/batdongsan.test/admin/');
define('DB_HOST'    , 'localhost');
define('DB_PORT'    , 3306);
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_NAME'    , '<db_name>');
define('DB_CHARSET', 'utf8');
// đẩy đường dẫn lên cấp cao nhất
define('PATH_ROOT'    , __DIR__ . '/../');