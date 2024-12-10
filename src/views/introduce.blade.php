@extends('layouts.master')

@section('title', 'Giới thiệu - Tin tức Bất động sản')

@section('styles')
    <style>
        .intro-section {
            width: 80%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 8px;
        }
        .intro-section h1 {
            color: #2c3e50;
        }
        .intro-section p {
            color: #7f8c8d;
            font-size: 16px;
            line-height: 1.6;
        }
    </style>
@endsection

@section('content')
    <div class="intro-section">
        <h1>Chào mừng đến với Trang Tin Tức Bất Động Sản</h1>
        <p>
            Chào mừng bạn đến với <strong><span style="color: #ffd700;">BIZ</span><span style="color: black;">NEWS</span></strong>, 
            nền tảng tin tức và giao dịch bất động sản trực tuyến. 
            Chúng tôi cung cấp thông tin cập nhật về thị trường bất động sản, các dự án mới, 
            phân tích xu hướng và nhiều tin tức hữu ích khác. Người dùng có thể đăng bài viết,
            chia sẻ thông tin về các sản phẩm, dự án bất động sản, hoặc tìm kiếm thông tin đầu tư.
        </p>
        <p>
            Với đội ngũ chuyên gia giàu kinh nghiệm, chúng tôi cam kết mang đến cho bạn những thông tin chính xác, kịp thời và hữu ích nhất.
            Hãy cùng khám phá thị trường bất động sản và tìm kiếm cơ hội đầu tư phù hợp với bạn ngay hôm nay!
        </p>
        <br>
        <hr>

        <h1>Cách Nạp Coin Để Đăng Bài</h1>
        <p><strong>Để đăng bài trên trang web, bạn cần có coin trong tài khoản. Sau đây là các bước hướng dẫn nạp coin để có thể đăng bài:</strong></p>
        <p style="color: black"><strong>1. Đăng Nhập Hoặc Đăng Ký Tài Khoản:</strong></p>
        <p>- Truy cập trang chủ của <strong><span style="color: #ffd700;">BIZ</span><span style="color: black;">NEWS</span></strong>
            và <a style="color: blue" href="{{ BASE_URL }}show_login">login</a> "nếu chưa có thì  
            <a style="color: blue" href="<?= BASE_URL ?>show_register">register</a>"  vào tài khoản của bạn bằng tên đăng nhập và mật khẩu.
            <!-- <img width="1000px" src="/uploads/image/a.png" alt=""> -->
        </p>
        <div style="text-align: center;">
            <img width="1000px" src="/uploads/image/a.png" alt="">
        </div>
        <br>

        <p style="color: black"><strong>2. Truy cập vào mục nạp coin:</strong></p>
        <p>- Sau khi đăng nhập, bạn vào phần <a style="color: blue" href="<?php echo BASE_URL; ?>form-coin">Nạp Coin</a> trong menu tài khoản.</p>
        <br>

        <p style="color: black"><strong>3. Chọn Phương Thức Thanh Toán:</strong></p>
        <p>- <strong>Chuyển khoản ngân hàng qua mã QR: </strong> Chuyển tiền vào tài khoản ngân hàng của chúng tôi để đổi lấy coin.</p>
        <p>
            <strong style="color: red">* Lưu ý: </strong> cần phải nhập <strong>Email</strong> tài khoản 
            <strong><span style="color: #ffd700;">BIZ</span><span style="color: black;">NEWS</span></strong>
            và <strong>Số Coin</strong> bạn muốn nạp để chúng tôi xử lý tránh trường hợp nhầm lẫn.
        </p>
        <p>- <strong>Giao dịch với chúng tôi: </strong> Nhập số coin bạn muốn và liên hệ với chúng tôi để giao dịch, rồi chờ đợi sự xác nhận từ phía chúng tôi.</p>
        
        <p><strong style="color: red">* Lưu ý: </strong> Số lượng coin bạn muốn nạp mỗi lần nạp không vượt quá 1,000,000 coin.</p>

        <div style="text-align: center;">
            <img width="650px" src="/uploads/image/b.png" alt="">
        </div>
        <br>

        <p style="color: black"><strong>3. Xác Nhận Giao Dịch:</strong></p>
        <p>- Kiểm tra lại thông tin và xác nhận giao dịch. Sau khi hoàn tất, coin sẽ được nạp vào tài khoản của bạn và bạn có thể sử dụng chúng để đăng bài.</p>
        <br>
        <hr>

        <h1>Hướng Dẫn Cách Đăng Bài</h1>
        <p><strong>Để đăng bài trên BizNews, bạn cần thực hiện các bước sau:</strong></p>
        <p style="color: black"><strong>1. Đăng Nhập Hoặc Đăng Ký Tài Khoản:</strong></p>
        <p>- Truy cập trang chủ của <strong><span style="color: #ffd700;">BIZ</span><span style="color: black;">NEWS</span></strong>
            và <a style="color: blue" href="{{ BASE_URL }}show_login">login</a> "nếu chưa có thì  
            <a style="color: blue" href="<?= BASE_URL ?>show_register">register</a>"  vào tài khoản của bạn bằng tên đăng nhập và mật khẩu.
            <!-- <img width="1000px" src="/uploads/image/a.png" alt=""> -->
        </p>
        <div style="text-align: center;">
            <img width="1000px" src="/uploads/image/a.png" alt="">
        </div>
        <br>

        <p style="color: black"><strong>2. Truy Cập Mục Đăng Bài:</strong></p>
        <p>- Sau khi đăng nhập, nhấp vào nút <a style="color: blue" href="<?php echo BASE_URL; ?>from-create">Đăng Tin</a> trên thanh menu.</p>
        <div style="text-align: center;">
            <img width="1000px" src="/uploads/image/a.png" alt="">
        </div>
        <br>

        <p style="color: black"><strong>3. Điền Thông Tin Bài Đăng:</strong></p>
        <p><strong>Khi đăng bài, bạn cần cung cấp các thông tin sau:</strong></p>
        <p>- <strong>Tiêu Đề: </strong> Viết tiêu đề hấp dẫn, ngắn gọn, thể hiện rõ nội dung bài viết.</p>
        <p>- <strong>Content (Nội Dung): </strong> Mô tả chi tiết thông tin bài viết, bao gồm thông tin về bất động sản, dự án, hoặc thông tin thị trường.</p>
        <p>- <strong> Danh Mục: </strong> Chọn một danh mục phù hợp với nội dung bài viết. Các danh mục bao gồm:</p>
        <ul>
            <li>Thị Trường</li>
            <li>Dự Án</li>
            <li>Chính Sách</li>
            <li>Bất Động Sản</li>
            <li>Bất Động Sản Bán</li>
            <li>Bất Động Sản Thuê</li>
        </ul>
        <p>
            - <strong> Hình Ảnh Đại Diện: </strong> Tải lên một hình ảnh minh họa cho bài viết. 
            Đây có thể là hình ảnh của dự án, sản phẩm bất động sản hoặc biểu đồ liên quan.
        </p>
        <div style="text-align: center;">
            <img width="560px" src="/uploads/image/c.png" alt="">
        </div>
        <br>

        <p style="color: black"><strong>4. Xác Nhận và Đăng Bài:</strong></p>
        <p>- Sau khi điền đầy đủ thông tin, nhấn nút Xác Nhận để hoàn tất.</p>
        <p>- Hệ thống sẽ trừ 10,000 coin từ tài khoản của bạn và bài viết sẽ được duyệt để hiển thị công khai.</p>
        <div style="text-align: center;">
            <img width="560px" src="/uploads/image/d.png" alt="">
        </div>
        <br>

        <p>
            <strong style="color: red">* Lưu ý: </strong>
            Đảm bảo bài viết tuân thủ các chính sách nội dung của trang web, không vi phạm pháp luật hoặc chứa thông tin sai lệch.
        </p>
        <br>
        <hr>
        
        <p style="color: black"><strong>Với BizNews, bạn có thể dễ dàng tiếp cận hàng nghìn khách hàng tiềm năng và mở rộng cơ hội giao dịch bất động sản của mình.</strong></p>
        <p style="color: black"><strong>Chúc bạn thành công! 🚀</strong></p>
    </div>
@endsection
