<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang chủ - phụ kiện chơi game</title>
    <link rel="stylesheet" href="/css/nav.css">
    <link rel="stylesheet" href="/css/footer.css">
    <link rel="stylesheet" href="/css/sanpham.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">


</head>

<body>
    <div id="wrapper" style="padding-bottom: 30px;">
        <div id="header">
            <nav class="container">
                <a href="" id="logo">
                    <img src="/img/logo_fpt.png" alt="">
                </a>
                <ul id="main-menu">
                    <li><a href="/index/form"><i class="fa-solid fa-house fa-bounce"></i>Trang chủ</a></li>
                    <li><a href=""><i class="fa-solid fa-list-ul"></i>Sản phẩm</a>
                        <ul class="sub-menu">
                            <li><a href="">Máy chơi game cầm tay</a></li>
                            <li><a href="">Bao tay</a></li>
                            <!-- style="margin-top: -15px;" -->
                            <li><a href="">Tay cầm chơi game</a></li>
                            <li><a href="">Tai nghe</a>
                                <ul class="sub-menu">
                                    <li><a href="">Tai nghe không dây</a></li>
                                    <li><a href="">Tai nghe có dây</a></li>
                                </ul>
                            </li>
                            <li><a href="">Nút bấm chơi game</a></li>
                            <li><a href="">Chuột</a>
                                <ul class="sub-menu">
                                    <li><a href="">Chuột không dây</a></li>
                                    <li><a href="">Chuột có dây</a></li>
                                </ul>
                            </li>
                            <li><a href="">Bàn phím</a></li>
                        </ul>
                    </li>
                    <li><a href=""><i class="fa-solid fa-pen"></i>Báo cáo</a></li>
                    <li><a href=""><i class="fa-solid fa-newspaper"></i>Tin tức</a></li>
                    <li><a href="/giohang/form"><i class="fa-solid fa-cart-shopping"></i>Giỏ hàng</a></li>
                    <li><a href=""><i class="fas fa-user-circle"></i>Tài khoản</a>
                        <ul class="sub-menu">
                            <li><a href="/index/DangNhap">Đăng nhập </a></li>
                            <li><a href="/index/DangKi">Đăng ký </a></li>
                            <li><a href="/capnhatTK/form">Cập nhật tài khoản</a></li>
                            <li><a href="">Đăng xuất </a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
    
    <div class="container">
        <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="/img/banner1.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                  <h5>Ngon bổ rẻ</h5>
                  <p>Uy tín đặt lên hàng đầu.</p>
                </div>
              </div>
              <div class="carousel-item">
                <img src="/img/banner2.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                  <h5>Khách hàng là thượng đế</h5>
                  <p>Mua đổi trả trong tích tắt.</p>
                </div>
              </div>
              <div class="carousel-item">
                <img src="/img/banner3.png" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                  <h5>Hàng chính hãng</h5>
                  <p>Nói không với hàng fake.</p>
                </div>
              </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>
    </div>

    <article>
        <div id="sp">
            <div class="headline">
                <h4>Sản phẩm bán chạy</h4>
            </div>
            <ul class="products">
                <li>
                    <div class="product-item">
                        <div class="product-top">
                            <a href="" class="product-thumb">
                                <img src="/sanpham/DL01a4min.jpg" alt="">
                            </a>
                            <!--Mua ngay-->
                            <a href="" class="buy-now">Mua ngay</a>
                        </div>
                        <div class="product-info">
                            <a href="" class="product-cat">Quạt tản nhiệt</a>
                            <a href="" class="product-name">Sonic</a>
                            <a href="" class="product-price">1000$</a>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="product-item">
                        <div class="product-top">
                            <a href="" class="product-thumb">
                                <img src="/sanpham/DL01a4min.jpg" alt="">
                            </a>
                            <!--Mua ngay-->
                            <a href="" class="buy-now">Mua ngay</a>
                        </div>
                        <div class="product-info">
                            <a href="" class="product-cat">Quạt tản nhiệt</a>
                            <a href="" class="product-name">Sonic</a>
                            <a href="" class="product-price">1000$</a>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="product-item">
                        <div class="product-top">
                            <a href="" class="product-thumb">
                                <img src="/sanpham/DL01a4min.jpg" alt="">
                            </a>
                            <!--Mua ngay-->
                            <a href="" class="buy-now">Mua ngay</a>
                        </div>
                        <div class="product-info">
                            <a href="" class="product-cat">Quạt tản nhiệt</a>
                            <a href="" class="product-name">Sonic</a>
                            <a href="" class="product-price">1000$</a>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="product-item">
                        <div class="product-top">
                            <a href="" class="product-thumb">
                                <img src="/sanpham/DL01a4min.jpg" alt="">
                            </a>
                            <!--Mua ngay-->
                            <a href="" class="buy-now">Mua ngay</a>
                        </div>
                        <div class="product-info">
                            <a href="" class="product-cat">Quạt tản nhiệt</a>
                            <a href="" class="product-name">Sonic</a>
                            <a href="" class="product-price">1000$</a>
                        </div>
                    </div>
                </li>
                

                <div class="container">
                    <div id="sanphambanchay">
                        Tai nghe bluetooth
                      </div>
                      <div id="hinhbanner">
                        <img src="/img/banner1.jpg" alt="">
                    </div>
                </div>


                <li>
                    <div class="product-item">
                        <div class="product-top">
                            <a href="" class="product-thumb">
                                <img src="/sanpham/DL01a4min.jpg" alt="">
                            </a>
                            <!--Mua ngay-->
                            <a href="" class="buy-now">Mua ngay</a>
                        </div>
                        <div class="product-info">
                            <a href="" class="product-cat">Quạt tản nhiệt</a>
                            <a href="" class="product-name">Sonic</a>
                            <a href="" class="product-price">1000$</a>
                        </div>
                    </div>
                </li>

                <li>
                    <div class="product-item">
                        <div class="product-top">
                            <a href="" class="product-thumb">
                                <img src="/sanpham/DL01a4min.jpg" alt="">
                            </a>
                            <!--Mua ngay-->
                            <a href="" class="buy-now">Mua ngay</a>
                        </div>
                        <div class="product-info">
                            <a href="" class="product-cat">Quạt tản nhiệt</a>
                            <a href="" class="product-name">Sonic</a>
                            <a href="" class="product-price">1000$</a>
                        </div>
                    </div>
                </li>

                <li>
                    <div class="product-item">
                        <div class="product-top">
                            <a href="" class="product-thumb">
                                <img src="/sanpham/DL01a4min.jpg" alt="">
                            </a>
                            <!--Mua ngay-->
                            <a href="" class="buy-now">Mua ngay</a>
                        </div>
                        <div class="product-info">
                            <a href="" class="product-cat">Quạt tản nhiệt</a>
                            <a href="" class="product-name">Sonic</a>
                            <a href="" class="product-price">1000$</a>
                        </div>
                    </div>
                </li>

                <li>
                    <div class="product-item">
                        <div class="product-top">
                            <a href="" class="product-thumb">
                                <img src="/sanpham/DL01a4min.jpg" alt="">
                            </a>
                            <!--Mua ngay-->
                            <a href="" class="buy-now">Mua ngay</a>
                        </div>
                        <div class="product-info">
                            <a href="" class="product-cat">Quạt tản nhiệt</a>
                            <a href="" class="product-name">Sonic</a>
                            <a href="" class="product-price">1000$</a>
                        </div>
                    </div>
                </li>

                <li>
                    <div class="product-item">
                        <div class="product-top">
                            <a href="" class="product-thumb">
                                <img src="/sanpham/DL01a4min.jpg" alt="">
                            </a>
                            <!--Mua ngay-->
                            <a href="" class="buy-now">Mua ngay</a>
                        </div>
                        <div class="product-info">
                            <a href="" class="product-cat">Quạt tản nhiệt</a>
                            <a href="" class="product-name">Sonic</a>
                            <a href="" class="product-price">1000$</a>
                        </div>
                    </div>
                </li>

                <li>
                    <div class="product-item">
                        <div class="product-top">
                            <a href="" class="product-thumb">
                                <img src="/sanpham/DL01a4min.jpg" alt="">
                            </a>
                            <!--Mua ngay-->
                            <a href="" class="buy-now">Mua ngay</a>
                        </div>
                        <div class="product-info">
                            <a href="" class="product-cat">Quạt tản nhiệt</a>
                            <a href="" class="product-name">Sonic</a>
                            <a href="" class="product-price">1000$</a>
                        </div>
                    </div>
                </li>

                <li>
                    <div class="product-item">
                        <div class="product-top">
                            <a href="" class="product-thumb">
                                <img src="/sanpham/DL01a4min.jpg" alt="">
                            </a>
                            <!--Mua ngay-->
                            <a href="" class="buy-now">Mua ngay</a>
                        </div>
                        <div class="product-info">
                            <a href="" class="product-cat">Quạt tản nhiệt</a>
                            <a href="" class="product-name">Sonic</a>
                            <a href="" class="product-price">1000$</a>
                        </div>
                    </div>
                </li>

                <li>
                    <div class="product-item">
                        <div class="product-top">
                            <a href="" class="product-thumb">
                                <img src="/sanpham/DL01a4min.jpg" alt="">
                            </a>
                            <!--Mua ngay-->
                            <a href="" class="buy-now">Mua ngay</a>
                        </div>
                        <div class="product-info">
                            <a href="" class="product-cat">Quạt tản nhiệt</a>
                            <a href="" class="product-name">Sonic</a>
                            <a href="" class="product-price">1000$</a>
                        </div>
                    </div>
                </li>

            </ul>
        </div>
    </article>

    <!-- Site footer -->
    <footer class="footer" style="margin-top: 10%;">
        <div class="waves">
            <div class="wave" id="wave1"></div>
            <div class="wave" id="wave2"></div>
            <div class="wave" id="wave3"></div>
            <div class="wave" id="wave4"></div>
        </div>
        <ul class="social-icon">
            <li class="social-icon__item"><a class="social-icon__link" href="#">
                    <ion-icon name="logo-facebook"></ion-icon>
                </a></li>
            <li class="social-icon__item"><a class="social-icon__link" href="#">
                    <ion-icon name="logo-twitter"></ion-icon>
                </a></li>
            <li class="social-icon__item"><a class="social-icon__link" href="#">
                    <ion-icon name="logo-linkedin"></ion-icon>
                </a></li>
            <li class="social-icon__item"><a class="social-icon__link" href="#">
                    <ion-icon name="logo-instagram"></ion-icon>
                </a></li>
        </ul>
        <ul class="menu">
            <li class="menu__item"><a class="menu__link" href="#">Trang chủ</a></li>
            <li class="menu__item"><a class="menu__link" href="#">Báo cáo</a></li>
            <li class="menu__item"><a class="menu__link" href="#">Tin tức</a></li>
            <li class="menu__item"><a class="menu__link" href="/giohang/form">Giỏ hàng</a></li>
            <li class="menu__item"><a class="menu__link" href="#">Tài khoản</a></li>

        </ul>
        <p>&copy;2023 Form 404 Team</p>
    </footer>


    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <script>
        $(document).ready(function () {
            $('.sub-menu').parent('li').addClass('has-child')
        });
    </script>

    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

</body>

</html>