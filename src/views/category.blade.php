@extends('layouts.master')

@section('title', 'Bất động sản')

@section('content')
<div class="container" style="max-width: 80%;">
    <div class="row g-2"> <!-- g-2 để giảm khoảng cách giữa các cột -->
        <!-- Cột trái 70% -->
        <div class="col-lg-8 col-md-7">
            <div class="row">
                <div class="col-12">
                    <div class="section-title">
                        <h4 class="m-0 text-uppercase font-weight-bold">Real Estate</h4>
                        <a class="text-secondary font-weight-medium text-decoration-none" href="http://localhost/batdongsan/">View All</a>
                    </div>
                </div>

                <?php $count = 0; ?>
                <?php foreach($latest as $article): ?>
                    <?php if($count % 3 == 2): ?>
                        <div class="col-lg-12">
                            <div class="row news-lg mx-0 mb-3">
                                <div class="col-md-6 h-100 px-0">
                                    <img class="img-fluid h-100" src="uploads/image/<?= htmlspecialchars($article['image']) ?>" style="object-fit: cover;">
                                </div>
                                <div class="col-md-6 d-flex flex-column border bg-white h-100 px-0">
                                    <div class="mt-auto p-4">
                                        <div class="mb-2">
                                            <a class="badge badge-primary text-uppercase font-weight-semi-bold p-2 mr-2" href=""><?= htmlspecialchars($article['category']) ?></a>
                                            <a class="text-body" href=""><small><?= date('M d, Y', strtotime( $article['created_at'])) ?></small></a>
                                        </div>
                                        <a class="h4 d-block mb-3 text-secondary text-uppercase font-weight-bold" href="<?= BASE_URL ?>show/<?= htmlspecialchars($article['id']) ?>" class="char-limit"><?= htmlspecialchars(substr($article['title'], 0, 100)) . '...' ?></a>
                                    </div>
                                    <div class="d-flex justify-content-between bg-white border-top mt-auto p-4">
                                        <div class="d-flex align-items-center">
                                            <img class="rounded-circle mr-2" src="https://via.placeholder.com/50" width="25" height="25" alt="">
                                            <small><?= htmlspecialchars($article['full_name']) ?></small>
                                        </div>
                                        <div class="d-flex align-items-center">
                                            <small class="ml-3"><i class="far fa-eye mr-2"></i><?= htmlspecialchars($article['view_count']) ?></small>
                                            <small class="ml-3"><i class="far fa-comment mr-2"></i><?= htmlspecialchars($article['comment_count']) ?></small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php else: ?>
                        <div class="col-lg-6">
                            <div class="position-relative mb-3">
                                <div class="img-container w-100 h-100 overflow-hidden">
                                    <img class="img-fluid w-100 h-100" src="/uploads/image/<?= htmlspecialchars($article['image']) ?>" style="object-fit: cover;">
                                </div>
                                <div class="bg-white border border-top-0 p-4" style="height: 200px">
                                    <div class="mb-2">
                                        <a class="badge badge-primary text-uppercase font-weight-semi-bold p-2 mr-2" href="#"><?= htmlspecialchars($article['category']) ?></a>
                                        <a class="text-body" href=""><small><?= date('M d, Y', strtotime($article['created_at'])) ?></small></a>
                                    </div>
                                    <a class="h4 d-block mb-3 text-secondary text-uppercase font-weight-bold" href="<?= BASE_URL ?>show/<?= htmlspecialchars($article['id']) ?>" class="char-limit"><?= htmlspecialchars(substr($article['title'], 0, 100)) . '...' ?></a>
                                </div>
                                <div class="d-flex justify-content-between bg-white border border-top-0 p-4">
                                    <div class="d-flex align-items-center">
                                        <img class="rounded-circle mr-2" src="https://via.placeholder.com/50" width="25" height="25" alt="">
                                        <small><?= htmlspecialchars($article['full_name']) ?></small>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <small class="ml-3"><i class="far fa-eye mr-2"></i><?= htmlspecialchars($article['view_count']) ?></small>
                                        <small class="ml-3"><i class="far fa-comment mr-2"></i><?= htmlspecialchars($article['comment_count']) ?></small>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php endif ?>
                    <?php $count++; ?>
                <?php endforeach ?>
            </div>
        </div>

        <!-- Cột phải 30% -->
        <div class="col-lg-4 col-md-5">
            <div class="mb-3">
                <div class="section-title mb-0">
                    <h4 class="m-0 text-uppercase font-weight-bold">Newsletter</h4>
                </div>
                <div class="bg-white text-center border border-top-0 p-3">
                    <p>Aliqu justo et labore at eirmod justo sea erat diam dolor diam vero kasd</p>
                    <div class="input-group mb-2" style="width: 100%;">
                        <input type="text" class="form-control form-control-lg" placeholder="Your Email">
                        <div class="input-group-append">
                            <button class="btn btn-primary font-weight-bold px-3">Sign Up</button>
                        </div>
                    </div>
                    <small>Lorem ipsum dolor sit amet elit</small>
                </div>
            </div>
            <div class="mb-3">
                <div class="section-title mb-0">
                    <h4 class="m-0 text-uppercase font-weight-bold">Tags</h4>
                </div>
                <div class="bg-white border border-top-0 p-3">
                    <div class="d-flex flex-wrap m-n1">
                        <a href="" class="btn btn-sm btn-outline-secondary m-1">Politics</a>
                        <a href="" class="btn btn-sm btn-outline-secondary m-1">Business</a>
                        <a href="" class="btn btn-sm btn-outline-secondary m-1">Corporate</a>
                        <a href="" class="btn btn-sm btn-outline-secondary m-1">Business</a>
                        <a href="" class="btn btn-sm btn-outline-secondary m-1">Health</a>
                        <a href="" class="btn btn-sm btn-outline-secondary m-1">Education</a>
                        <a href="" class="btn btn-sm btn-outline-secondary m-1">Science</a>
                        <a href="" class="btn btn-sm btn-outline-secondary m-1">Business</a>
                        <a href="" class="btn btn-sm btn-outline-secondary m-1">Foods</a>
                        <a href="" class="btn btn-sm btn-outline-secondary m-1">Travel</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
