<div class="row">
        <div class="col-md-9 m-0 p-0">
            <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
                <div class="carousel-indicators">
                  <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                  <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                  <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <a href="?mod=page&act=category&id=3"><img src="../content/img/banner0.png" class="d-block w-100" alt="..."></a>
                  </div>
                  <div class="carousel-item">
                    <img src="../content/img/banner1.jpg" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="../content/img/banner0.png" class="d-block w-100" alt="...">
                  </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Next</span>
                </button>
              </div>
        </div>
        <div class="col-md-3 m-0">
            <a href="?mod=page&act=category&id=2"><img class="img-fluid" src="../content/img/banner2.jpg" alt=""></a>
            <a href="?mod=page&act=category&id=3"><img class="img-fluid" src="../content/img/banner3.jpg" alt=""></a>
        </div>
    </div>
    <!-- main -->
    <main class="container">
        <!-- Catagories -->
        <div class="text-center">
            <h3 class="my-3">DANH MỤC SẢN PHẨM</h3>
            <div class="row">  <!-- đã sửa -->
                    <?php 
                        foreach ($dsdm as $dm): 
                    ?>
                    <div class="col-md-4 position-relative">
                            <a href="?mod=page&act=category&id=2"><img class="img-fluid img-thumbnail" src="../content/img/<?=$dm['HinhAnh']?>" height="270px" alt=""></a>
                        <!-- <p class="text-danger p-2 bg-white my-2 position-absolute top-50 start-50 fs-6 translate-middle"><?=$dm['TenDanhMuc']?> </p> -->
                    </div>
                    
                    <?php
                        endforeach;
                    ?>
            </div>
        </div>

        <!-- Categories Start -->
        <!-- <div class="container-fluid pt-5">
        <h3 class="my-3">DANH MỤC SẢN PHẨM</h3>
            <div class="row px-xl-5 pb-3">
                    
                <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                    <a class="text-decoration-none" href="">
                        <div class="cat-item d-flex align-items-center mb-4">
                            <div class="overflow-hidden" style="width: 100px; height: 100px;">
                                <img class="img-fluid" src="../content/img/" alt="">
                            </div>
                            <div class="flex-fill pl-3">
                                <h6></h6>
                                <small class="text-body">100 Products</small> 
                            </div>
                        </div>
                    </a>
                </div>
                
            </div>
        </div> -->
        <!-- Categories End -->

        <!-- --------sale Products -------------------------->
        <div class="text-center mt-5">
                <!-- ---countdown--------------- -->
                <!-- <div class="container-countdown">
                    <h3 id="headline">FlashSale</h3>
                    <div id="countdown">
                        <ul>
                            <li><span id="days"></span></li>
                            <li><span id="hours"></span></li>
                            <li><span id="minutes"></span></li>
                            <li><span id="seconds"></span></li>
                        </ul>
                    </div>
                    <div id="content" class="emoji">
                        <span>🥳</span>
                        <span>🎉</span>
                        <span>🎂</span>
                    </div>
                </div> -->
                <!-- countdown end -->
                <div class="row">
   
        <!-- All categories -->
        <div class="text-center mt-5">
    <div class="d-flex">
        <h3 class="my-3">Chăm sóc da</h3>
        <a href="?mod=page&act=category&id=1" class="btn btn-outline-dark my-3 ms-auto">Xem thêm</a>
    </div>
    <div class="row">
        <!-- Banner Section -->
        <div class="col-md-3 mb-3">
            <div class="shadow pb-3 container-img border mt-2 h-100">
                <div class="banner h-100">
                    <img class="img-fluid h-100" src="../content/img/csd3.png" alt="Banner">
                </div>
            </div>
        </div>
        <!-- Product Section -->
        <div class="col-md-9">
            <div class="row">
                <?php foreach ($sp_nu as $index => $sp): ?>
                    <div class="col-md-3 mb-2 d-flex align-items-stretch">
                        <div class="shadow pb-3 container-img border mt-2 w-100">
                            <div class="product-img">
                                <a href="?mod=product&act=detail&id=<?=$sp['MaSanPham']?>">
                                    <img class="img-fluid" src="../content/img/<?=$sp['HinhAnh']?>" alt="" style="; object-fit: cover;"></a>
                                <div class="product-action text-center icons">
                                    <a class="btn btn-outline-dark btn-square" href="?mod=cart&act=add&id=<?=$sp['MaSanPham']?>"><i class="fa fa-shopping-cart"></i> Thêm vào giỏ</a>
                                </div>
                            </div>
                            <div class="product-content">
                                <p class="text-capitalize box text-start"><?=$sp['TenSanPham']?></p>
                                <div class="d-flex justify-content-around">
                                    <span class="color-main fs-6 fw-bold"><?=number_format($sp['GiaKhuyenMai'],0, ",",",")?> đ</span>
                                    <span class="text-muted"><del><?=number_format($sp['Gia'],0, ",",",")?> đ</del></span>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>
    </div>
</div>
        </div>
        <div class="text-center mt-5">
            <div class=" d-flex">
                <h3 class="my-3">Sản phẩm bán chạy</h3>
                <a href="?mod=page&act=category&id=2" class="btn btn-outline-dark my-3 ms-auto">Xem thêm</a>
            </div>
            <div class="row">
                <?php 
                    foreach ($sp_nam as $sp):
                ?>
                <div class="col-md-3 mb-3">
                    <div class="shadow pb-3 container-img border">
                        <div class="product-img ">
                            <a href="?mod=product&act=detail&id=<?=$sp['MaSanPham']?>">
                            <div class="sale position-absolute">
                                <!-- <p class="sale-content border bg-main text-white d-inline px-2 py-1 fw-bold">
                                    - 15 %
                                </p> -->
                            </div>
                            
                            <img class="img-fluid " src="../content/img/<?=$sp['HinhAnh']?>" alt=" "style="width: 200px; "></a>
                            <div class="product-action text-center icons">
                                <a class="btn btn-outline-dark btn-square" href="?mod=cart&act=add&id=<?=$sp['MaSanPham']?>"><i class="fa fa-shopping-cart"></i> Thêm vào giỏ</a>
                                <!-- <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a> -->
                            </div>
                        </div>
                        <div class="product-content">
                            <p class="text-capitalize box text-start">
                                <?=$sp['TenSanPham']?>
                            </p>
                            <div class="d-flex justify-content-around">
                                <span class="color-main fs-6 fw-bold"> <?=number_format($sp['GiaKhuyenMai'],0, ",",",")?> đ</span>
                                <span class="text-muted"> <del> <?=number_format($sp['Gia'],0, ",",",")?> đ </del></span>
                            </div>
                        </div>
                    </div>
                </div>
                <?php  endforeach; ?>
            </div>
        </div>
        <div class="text-center mt-5">
            <div class=" d-flex">
                <h3 class="my-3">Chăm sóc cá nhân</h3>
                <a href="?mod=page&act=category&id=3" class="btn btn-outline-dark my-3 ms-auto">Xem thêm</a>
            </div>
            <div class="row">
                <?php
                    foreach ($sp_treem as $sp):
                ?>
                <div class="col-md-3 mb-3">
                    <div class="shadow pb-3 container-img border">
                        <div class="product-img ">
                            <a href="?mod=product&act=detail&id=<?=$sp['MaSanPham']?>">
                            <div class="sale position-absolute">
                                <!-- <p class="sale-content border bg-main text-white d-inline px-2 py-1 fw-bold">
                                    - 15 %
                                </p> -->
                            </div>
                            
                            <img class="img-fluid " src="../content/img/<?=$sp['HinhAnh']?>" alt="" style="width: 200px;"></a>
                            <div class="product-action text-center icons">
                                <a class="btn btn-outline-dark btn-square" href="?mod=cart&act=add&id=<?=$sp['MaSanPham']?>"><i class="fa fa-shopping-cart"></i> Thêm vào giỏ</a>
                                <!-- <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a> -->
                            </div>
                        </div>
                        <div class="product-content">
                            <p class="text-capitalize box text-start">
                                <?=$sp['TenSanPham']?>
                            </p>
                            <div class="d-flex justify-content-around">
                                <span class="color-main fs-6 fw-bold"> <?=number_format($sp['GiaKhuyenMai'],0, ",",",")?> đ</span>
                                <span class="text-muted"> <del> <?=number_format($sp['Gia'],0, ",",",")?> đ </del></span>
                            </div>
                        </div>
                    </div>
                </div>
                <?php endforeach; ?>
            </div>
        </div>

        
    </main>
    
    <!-- footer -->
    <!-- <div class="bg-dark mt-5">
        <div class=" bg-dark p-5 text-center">
            <p for="newsletter1" class="text-white mx-5">Nhập Email để nhận mã khuyến mãi </p>
            <div class="d-flex justify-content-center">
                <input id="newsletter1" type="text" class="form-control w-25 rounded-0" placeholder="Nhập email của bạn . . .">
                <button class="btn bg-main bg-opacity-75 rounded-0 " type="button">Đăng ký</button>
              </div>
        </div>
    </div> -->

    <!-- ---------------------------------------------------- -->

    

   