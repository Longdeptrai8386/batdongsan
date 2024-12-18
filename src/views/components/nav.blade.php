<div class="container-fluid p-0">
    <nav class="navbar navbar-expand-lg bg-dark navbar-dark py-2 py-lg-0 px-lg-5">
        <a href="<?php echo BASE_URL; ?>" class="navbar-brand d-block d-lg-none">
            <h1 class="m-0 display-4 text-uppercase text-primary">Biz<span class="text-white font-weight-normal">News</span></h1>
        </a>
        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-between px-0 px-lg-3" id="navbarCollapse">
            <div class="navbar-nav mr-auto py-0">
                <a href="<?php echo BASE_URL; ?>" class="nav-item nav-link active">Home</a>
                <a href="<?php echo BASE_URL; ?>show_introduce" class="nav-item nav-link">Giới Thiệu</a>

                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Loại Tin</a>
                    <div class="dropdown-menu rounded-0 m-0">

                    <?php foreach ($_SESSION['categories'] as $item): ?>
                        <a href="<?php echo BASE_URL . 'category/' . $item["id"]; ?>" class="dropdown-item">
                            <?php echo htmlspecialchars($item['name']); ?>
                        </a>
                    <?php endforeach; ?>

                    </div>
                </div>
                <a href="<?php echo BASE_URL; ?>form-coin" class="nav-item nav-link">Nạp Coin</a>

                <a href="<?php echo BASE_URL; ?>from-create" class="nav-item nav-link">Đăng Tin</a>

                <a href="<?php echo BASE_URL; ?>show_contact" class="nav-item nav-link">Liên Hệ</a>
            </div>

            <form action="/search" method="get" class="input-group ml-auto d-none d-lg-flex" style="width: 100%; max-width: 300px;">
                <input type="text" name="keyword" class="form-control border-0" placeholder="Search...">
                <div class="input-group-append">
                    <button type="submit" class="input-group-text bg-primary text-dark border-0 px-3"><i class="fa fa-search"></i></button>
                </div>
            </form>
            
        </div>
    </nav>
</div>