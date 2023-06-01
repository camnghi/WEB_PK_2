<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
<link href="/css/chitietsanpham.css" rel="stylesheet" type="text/css">
</head>

<body>
    <div id="wrapper" style="padding-bottom: 30px;">
        <div id="header">
            <nav class="container">
                <a href="" id="logo">
                    <img src="/img/logo_fpt.png" alt="">
                </a>
                <ul id="main-menu">
                    <li><a href=""><i class="fa-solid fa-house fa-bounce"></i>Trang chủ</a></li>
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
                    <li><a href=""><i class="fa-solid fa-cart-shopping"></i>Giỏ hàng</a></li>
                    <li><a href=""><i class="fas fa-user-circle"></i>Tài khoản</a>
                        <ul class="sub-menu">
                            <li><a href="">Đăng nhập </a></li>
                            <li><a href="">Đăng ký </a></li>
                            <li><a href="/capnhatTK/form">Cập nhật tài khoản</a></li>
                            <li><a href="">Đăng xuất </a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
<div class="container  bg-while rm-slide-detail">

		<div class="row">
			<div class="col-md-8">
				<div id="carouselExampleIndicators" class="carousel slide">
					<div class="carousel-indicators">
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="0" class="active" aria-current="true"
							aria-label="Slide 1"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="1" aria-label="Slide 2"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="2" aria-label="Slide 3"></button>
					</div>
					<div class="carousel-inner" role="listbox">
						<div class="carousel-item active">
							<img src="/sanpham/DL01a1max.jpg" class="w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="/sanpham/DL01a2max.jpg" class="w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="/sanpham/DL01a3max.jpg" class="w-100" alt="...">
						</div>
					</div>
					<button class="carousel-control-prev" type="button"
						data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
						<span class="fa fa-angle-up" aria-hidden="true"></span>

					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
						<span class="fa fa-angle-down" aria-hidden="true"></span>

					</button>
				</div>

			</div>
			<div class="col-md-4">
				<div class="content-right">
					<h1 class="text-h1">Quạt tản nhiết DL01</h1>
					<div class="rm-price">
						<span class="rm-sale">Giá: 200.000đ</span> <span
							class="rm-icondesktop-price">Còn hàng</span>
					</div>
					<div class="form-button">
						<div class="row">
							<div class="col-md-6">
								<label>Màu sắc</label>
								<p>
									<select id="optMauSac" class="form-control">
										<option value="10">Màu: Đen</option>
										<option value="10">Màu: Xanh</option>
										<option value="10">Màu: Xám</option>
									</select>
								</p>

							</div>
							<div class="col-md-6">
								<label>Số lượng</label>
								<p>
									<select id="optSoLuong" class="form-control">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
									</select>
								</p>

							</div>
						</div>
						<div class="row">
							<li class="inpr"><span><a href=""
									title="Chính sách bảo hành" target="_blank">Chính sách bảo
										hành</a></span></li>
						</div>
						<div class="row">
							<div class="col-md-7">
								<div id="rm-booking" class="input-group">
								<a href="/giohang/form">
								<div type="button"
										class="big-button button-red left btnMuaNgayDetail">
										<strong>THÊM VÀO GIỎ HÀNG</strong>
									</div>
								</a>
									
								</div>
								<br>
							</div>
							<div class="col-md-4">
								<div id="rm-booking" class="input-group">
								<a href="/giohang/form">
									<div type="button"
										class="big-button button-red left btnMuaNgayDetail">
										<strong>MUA NGAY</strong>
									</div>
									</a>
								</div>

							</div>
							<div class="col-md-12">
								<div class="social">
									<button class="like" id="button">
										<i class="fa fa-thumbs-up"></i> <span>Like</span>
									</button>
									<button class="share" id="button">
										<i class="fa fa-share"></i> <span>Share</span>
									</button>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>


		<div class="container">
			<div class="row">
				<ul class="nav nav-tabs" id="myTab" role="tablist">
					<li class="nav-item" role="presentation">
						<button class="nav-link active" id="gioithieu-tab"
							data-bs-toggle="tab" data-bs-target="#gioithieu-tab-pane"
							type="button" role="tab" aria-controls="gioithieu-tab-pane"
							aria-selected="true">Giới thiệu</button>
					</li>
					<li class="nav-item" role="presentation">
						<button class="nav-link" id="thongkekythuat-tab"
							data-bs-toggle="tab" data-bs-target="#thongkekythuat-tab-pane"
							type="button" role="tab" aria-controls="thongkekythuat-tab-pane"
							aria-selected="false">Thông kê kỹ thuật</button>
					</li>
					<!-- <li class="nav-item" role="presentation">
                        <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact-tab-pane" type="button" role="tab" aria-controls="contact-tab-pane" aria-selected="false">Contact</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="disabled-tab" data-bs-toggle="tab" data-bs-target="#disabled-tab-pane" type="button" role="tab" aria-controls="disabled-tab-pane" aria-selected="false" disabled>Disabled</button>
                    </li> -->
				</ul>
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="gioithieu-tab-pane"
						role="tabpanel" aria-labelledby="gioithieu-tab" tabindex="0">
						<p>Quạt tản nhiệt gaming cho điện thoại, tản nhiệt sò lạnh
							siêu mát DL01 Gemini Shop</p>
						<p>Đặc điểm nổi bật:</p>
						<p>Quạt tản nhiệt gaming DL01 cho điện thoại, tản nhiệt sò
							lạnh siêu mát</p>
						<p>Hiện nay gamemobile như PUBG, Liên quân mobile, Call of
							Duty ,vv.. đã trở lên quen thuộc với hầu hết người yêu game
							mobile.</p>
						<p>Shop xin giới thiệu với các bạn sản phẩm quạt tản nhiệt
							gaming DL01 giúp các game thủ chiến các game đồ họa khủng mà
							không sợ nóng máy.</p>
						<p>Sản phẩm bảo hành 1 tháng lỗi 1 đổi 1</p>

					</div>
					<div class="tab-pane fade" id="thongkekythuat-tab-pane"
						role="tabpanel" aria-labelledby="thongkekythuat-tab" tabindex="0">
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Sản phẩm</th>
									<th scope="col">Thông tin</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">Tên Sản Phẩm</th>
									<td>Quạt tản nhiêt DL01</td>
								</tr>
								<tr>
									<th scope="row">Thương hiện</th>
									<td>SOS</td>
								</tr>
								<tr>
									<th scope="row">Nguốc gốc</th>
									<td>Viêt Nam</td>
								</tr>
								<tr>
									<th scope="row">Dung lượng</th>
									<td></td>
								</tr>
								<tr>
									<th scope="row">Kích thước</th>
									<td>8 in</td>
								</tr>
								<tr>
									<th scope="row">Trọng lượng</th>
									<td>340g</td>
								</tr>

							</tbody>
						</table>

						<!-- like share -->
						<div class="col-md-12">
							<div class="row" span="10" id="like1">
								<div class="fb-like fb_iframe_widget"
									style="float: left; margin-left: 15px" data-href=""
									data-layout="button_count" data-action="like" data-size="small"
									data-show-faces="true" data-share="true"
									fb-xfbml-state="rendered" fb-iframe-plugin-query="">
									<span
										style="vertical-align: bottom; width: 150px; height: 28px;">
										<iframe name="f3810ff35304438" width="1000px" height="1000px"
											data-testid="fb:like Facebook Social Plugin"
											title="fb:like Facebook Social Plugin" frameborder="0"
											allowtransparency="true" allowfullscreen="true"
											scrolling="no" allow="encrypted-media" src=""
											style="border: none; visibility: visible; width: 150px; height: 28px;"
											class=""></iframe>
									</span>
								</div>

							</div>
						</div>
					</div>
					<div class="tab-pane fade" id="contact-tab-pane" role="tabpanel"
						aria-labelledby="contact-tab" tabindex="0"></div>
					<div class="tab-pane fade" id="disabled-tab-pane" role="tabpanel"
						aria-labelledby="disabled-tab" tabindex="0">...</div>
				</div>
			</div>
		</div>
		<div class="container bg-while">

			<div class="wapcontainer">
				<div class="row">
					<div class="col-md-12">
						<h2 class="text-label">
							<a href="" title="Sản phẩm bán chạy">Sản phẩm bán chạy </a>
						</h2>
					</div>
					<div class="col-md-12">
						<div id="phone-accessories-carousel" class="carousel slide">
							<div class="carousel-inner" role="listbox">
								<div class="item active">
									<div class="row row-item">
										<div class="list-group col-sm-3 col-md-3"
											style="text-align: center; padding-top: 10px;">

											<li class="list-group-item "><img class="w-100"
												src="/sanpham/5d4982f269fda3bbed6f5e4e1b6d41f8_tn.jpg"
												alt=" "> <span class="text-new">Mới</span>
												<div class="rmitem-caption">
													<h4>
														<a href="#" title="Quạt tản nhiệt DL01">Quạt tản nhiệt
															DL01</a>
													</h4>
													<p>
														<span class="text-price">200.000đ</span>
													<div>
														<a href="" class="rm-btn-buynow" title="Mua ngay">Mua
															ngay</a>
													</div>
													</p>
												</div></li>

										</div>
										<div class="list-group col-sm-3 col-md-3"
											style="text-align: center; padding-top: 10px;">

											<li class="list-group-item "><img class="w-100"
												src="/sanpham/5d4982f269fda3bbed6f5e4e1b6d41f8_tn.jpg"
												alt=" "> <span class="text-new">Mới</span>
												<div class="rmitem-caption">
													<h4>
														<a href="#" title="Quạt tản nhiệt DL01">Quạt tản nhiệt
															DL01</a>
													</h4>
													<p>
														<span class="text-price">200.000đ</span>
													<div>
														<a href="" class="rm-btn-buynow" title="Mua ngay">Mua
															ngay</a>
													</div>
													</p>
												</div></li>

										</div>
										<div class="list-group col-sm-3 col-md-3"
											style="text-align: center; padding-top: 10px;">

											<li class="list-group-item "><img class="w-100"
												src="/sanpham/5d4982f269fda3bbed6f5e4e1b6d41f8_tn.jpg"
												alt=" "> <span class="text-new">Mới</span>
												<div class="rmitem-caption">
													<h4>
														<a href="#" title="Quạt tản nhiệt DL01">Quạt tản nhiệt
															DL01</a>
													</h4>
													<p>
														<span class="text-price">200.000đ</span>
													<div>
														<a href="" class="rm-btn-buynow" title="Mua ngay">Mua
															ngay</a>
													</div>
													</p>
												</div></li>

										</div>
										<div class="list-group col-sm-3 col-md-3"
											style="text-align: center; padding-top: 10px;">

											<li class="list-group-item "><img class="w-100"
												src="/sanpham/5d4982f269fda3bbed6f5e4e1b6d41f8_tn.jpg"
												alt=" "> <span class="text-new">Mới</span>
												<div class="rmitem-caption">
													<h4>
														<a href="#" title="Quạt tản nhiệt DL01">Quạt tản nhiệt
															DL01</a>
													</h4>
													<p>
														<span class="text-price">200.000đ</span>
													<div>
														<a href="" class="rm-btn-buynow" title="Mua ngay">Mua
															ngay</a>
													</div>
													</p>
												</div></li>

										</div>
									</div>
									<div class="item ">
										<div class="row row-item">
											<div class="list-group col-sm-3 col-md-3"
												style="text-align: center; padding-top: 10px;">

												<li class="list-group-item "><img class="w-100"
													src="/sanpham/5d4982f269fda3bbed6f5e4e1b6d41f8_tn.jpg"
													alt=" "> <span class="text-new">Mới</span>
													<div class="rmitem-caption">
														<h4>
															<a href="#" title="Quạt tản nhiệt DL01">Quạt tản
																nhiệt DL01</a>
														</h4>
														<p>
															<span class="text-price">200.000đ</span>
														<div>
															<a href="" class="rm-btn-buynow" title="Mua ngay">Mua
																ngay</a>
														</div>
														</p>
													</div></li>

											</div>
											<div class="list-group col-sm-3 col-md-3"
												style="text-align: center; padding-top: 10px;">

												<li class="list-group-item "><img class="w-100"
													src="/sanpham/5d4982f269fda3bbed6f5e4e1b6d41f8_tn.jpg"
													alt=" "> <span class="text-new">Mới</span>
													<div class="rmitem-caption">
														<h4>
															<a href="#" title="Quạt tản nhiệt DL01">Quạt tản
																nhiệt DL01</a>
														</h4>
														<p>
															<span class="text-price">200.000đ</span>
														<div>
															<a href="" class="rm-btn-buynow" title="Mua ngay">Mua
																ngay</a>
														</div>
														</p>
													</div></li>

											</div>
											<div class="list-group col-sm-3 col-md-3"
												style="text-align: center; padding-top: 10px;">

												<li class="list-group-item "><img class="w-100"
													src="/sanpham/5d4982f269fda3bbed6f5e4e1b6d41f8_tn.jpg"
													alt=" "> <span class="text-new">Mới</span>
													<div class="rmitem-caption">
														<h4>
															<a href="#" title="Quạt tản nhiệt DL01">Quạt tản
																nhiệt DL01</a>
														</h4>
														<p>
															<span class="text-price">200.000đ</span>
														<div>
															<a href="" class="rm-btn-buynow" title="Mua ngay">Mua
																ngay</a>
														</div>
														</p>
													</div></li>

											</div>
											<div class="list-group col-sm-3 col-md-3"
												style="text-align: center; padding-top: 10px;">

												<li class="list-group-item "><img class="w-100"
													src="/sanpham/5d4982f269fda3bbed6f5e4e1b6d41f8_tn.jpg"
													alt=" "> <span class="text-new">Mới</span>
													<div class="rmitem-caption">
														<h4>
															<a href="#" title="Quạt tản nhiệt DL01">Quạt tản
																nhiệt DL01</a>
														</h4>
														<p>
															<span class="text-price">200.000đ</span>
														<div>
															<a href="" class="rm-btn-buynow" title="Mua ngay">Mua
																ngay</a>
														</div>
														</p>
													</div></li>

											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="container bg-while">
				<div class="wapcontainer">
					<div class="row">
						<div class="col-md-12">
							<h2 class="text-label">
								<a href="" title="Sản phẩm bán chạy">Sản phẩm</a>
							</h2>
						</div>
						<div class="col-md-12">
							<div id="phone-accessories-carousel" class="carousel slide">
								<div class="carousel-inner" role="listbox">
									<div class="item active">
										<div class="row row-item">
											<div class="list-group col-sm-3 col-md-3"
												style="text-align: center; padding-top: 10px;">

												<li class="list-group-item "><img class="w-100"
													src="/sanpham/5d4982f269fda3bbed6f5e4e1b6d41f8_tn.jpg"
													alt=" "> <span class="text-new">Mới</span>
													<div class="rmitem-caption">
														<h4>
															<a href="#" title="Quạt tản nhiệt DL01">Quạt tản
																nhiệt DL01</a>
														</h4>
														<p>
															<span class="text-price">200.000đ</span>
														<div>
															<a href="" class="rm-btn-buynow" title="Mua ngay">Mua
																ngay</a>
														</div>
														</p>
													</div></li>

											</div>
											<div class="list-group col-sm-3 col-md-3"
												style="text-align: center; padding-top: 10px;">

												<li class="list-group-item "><img class="w-100"
													src="/sanpham/5d4982f269fda3bbed6f5e4e1b6d41f8_tn.jpg"
													alt=" "> <span class="text-new">Mới</span>
													<div class="rmitem-caption">
														<h4>
															<a href="#" title="Quạt tản nhiệt DL01">Quạt tản
																nhiệt DL01</a>
														</h4>
														<p>
															<span class="text-price">200.000đ</span>
														<div>
															<a href="" class="rm-btn-buynow" title="Mua ngay">Mua
																ngay</a>
														</div>
														</p>
													</div></li>

											</div>
											<div class="list-group col-sm-3 col-md-3"
												style="text-align: center; padding-top: 10px;">

												<li class="list-group-item "><img class="w-100"
													src="/sanpham/5d4982f269fda3bbed6f5e4e1b6d41f8_tn.jpg"
													alt=" "> <span class="text-new">Mới</span>
													<div class="rmitem-caption">
														<h4>
															<a href="#" title="Quạt tản nhiệt DL01">Quạt tản
																nhiệt DL01</a>
														</h4>
														<p>
															<span class="text-price">200.000đ</span>
														<div>
															<a href="" class="rm-btn-buynow" title="Mua ngay">Mua
																ngay</a>
														</div>
														</p>
													</div></li>

											</div>
											<div class="list-group col-sm-3 col-md-3"
												style="text-align: center; padding-top: 10px;">

												<li class="list-group-item "><img class="w-100"
													src="/sanpham/5d4982f269fda3bbed6f5e4e1b6d41f8_tn.jpg"
													alt=" "> <span class="text-new">Mới</span>
													<div class="rmitem-caption">
														<h4>
															<a href="#" title="Quạt tản nhiệt DL01">Quạt tản
																nhiệt DL01</a>
														</h4>
														<p>
															<span class="text-price">200.000đ</span>
														<div>
															<a href="" class="rm-btn-buynow" title="Mua ngay">Mua
																ngay</a>
														</div>
														</p>
													</div></li>

											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
			</div>
			<div class="container bg-while">
					<div class="wapcontainer">
						<div class="row">
							<div class="col-md-12">
								<h2 class="text-label">
									<a href="" title="Sản phẩm bán chạy">Sản phẩm khác </a>
								</h2>
							</div>
							<div class="col-md-12">
								<div id="phone-accessories-carousel" class="carousel slide">
									<div class="carousel-inner" role="listbox">
										<div class="item active">
											<div class="row row-item">
												<div class="list-group col-sm-3 col-md-3"
													style="text-align: center; padding-top: 10px;">

													<li class="list-group-item "><img class="w-100"
														src="/sanpham/5d4982f269fda3bbed6f5e4e1b6d41f8_tn.jpg"
														alt=" "> <span class="text-new">Mới</span>
														<div class="rmitem-caption">
															<h4>
																<a href="#" title="Quạt tản nhiệt DL01">Quạt tản
																	nhiệt DL01</a>
															</h4>
															<p>
																<span class="text-price">200.000đ</span>
															<div>
																<a href="" class="rm-btn-buynow" title="Mua ngay">Mua
																	ngay</a>
															</div>
															</p>
														</div></li>

												</div>
												<div class="list-group col-sm-3 col-md-3"
													style="text-align: center; padding-top: 10px;">

													<li class="list-group-item "><img class="w-100"
														src="/sanpham/5d4982f269fda3bbed6f5e4e1b6d41f8_tn.jpg"
														alt=" "> <span class="text-new">Mới</span>
														<div class="rmitem-caption">
															<h4>
																<a href="#" title="Quạt tản nhiệt DL01">Quạt tản
																	nhiệt DL01</a>
															</h4>
															<p>
																<span class="text-price">200.000đ</span>
															<div>
																<a href="" class="rm-btn-buynow" title="Mua ngay">Mua
																	ngay</a>
															</div>
															</p>
														</div></li>

												</div>
												<div class="list-group col-sm-3 col-md-3"
													style="text-align: center; padding-top: 10px;">

													<li class="list-group-item "><img class="w-100"
														src="/sanpham/5d4982f269fda3bbed6f5e4e1b6d41f8_tn.jpg"
														alt=" "> <span class="text-new">Mới</span>
														<div class="rmitem-caption">
															<h4>
																<a href="#" title="Quạt tản nhiệt DL01">Quạt tản
																	nhiệt DL01</a>
															</h4>
															<p>
																<span class="text-price">200.000đ</span>
															<div>
																<a href="" class="rm-btn-buynow" title="Mua ngay">Mua
																	ngay</a>
															</div>
															</p>
														</div></li>

												</div>
												<div class="list-group col-sm-3 col-md-3"
													style="text-align: center; padding-top: 10px;">

													<li class="list-group-item "><img class="w-100"
														src="/sanpham/5d4982f269fda3bbed6f5e4e1b6d41f8_tn.jpg"
														alt=" "> <span class="text-new">Mới</span>
														<div class="rmitem-caption">
															<h4>
																<a href="#" title="Quạt tản nhiệt DL01">Quạt tản
																	nhiệt DL01</a>
															</h4>
															<p>
																<span class="text-price">200.000đ</span>
															<div>
																<a href="" class="rm-btn-buynow" title="Mua ngay">Mua
																	ngay</a>
															</div>
															</p>
														</div></li>

												</div>
											</div>
										</div>
										<div class="item ">
											<div class="row row-item">
												<div class="list-group col-sm-3 col-md-3"
													style="text-align: center; padding-top: 10px;">

													<li class="list-group-item "><img class="w-100"
														src="/sanpham/5d4982f269fda3bbed6f5e4e1b6d41f8_tn.jpg"
														alt=" "> <span class="text-new">Mới</span>
														<div class="rmitem-caption">
															<h4>
																<a href="#" title="Quạt tản nhiệt DL01">Quạt tản
																	nhiệt DL01</a>
															</h4>
															<p>
																<span class="text-price">200.000đ</span>
															<div>
																<a href="" class="rm-btn-buynow" title="Mua ngay">Mua
																	ngay</a>
															</div>
															</p>
														</div></li>

												</div>
												<div class="list-group col-sm-3 col-md-3"
													style="text-align: center; padding-top: 10px;">

													<li class="list-group-item "><img class="w-100"
														src="/sanpham/5d4982f269fda3bbed6f5e4e1b6d41f8_tn.jpg"
														alt=" "> <span class="text-new">Mới</span>
														<div class="rmitem-caption">
															<h4>
																<a href="#" title="Quạt tản nhiệt DL01">Quạt tản
																	nhiệt DL01</a>
															</h4>
															<p>
																<span class="text-price">200.000đ</span>
															<div>
																<a href="" class="rm-btn-buynow" title="Mua ngay">Mua
																	ngay</a>
															</div>
															</p>
														</div></li>

												</div>
												<div class="list-group col-sm-3 col-md-3"
													style="text-align: center; padding-top: 10px;">

													<li class="list-group-item "><img class="w-100"
														src="/sanpham/5d4982f269fda3bbed6f5e4e1b6d41f8_tn.jpg"
														alt=" "> <span class="text-new">Mới</span>
														<div class="rmitem-caption">
															<h4>
																<a href="#" title="Quạt tản nhiệt DL01">Quạt tản
																	nhiệt DL01</a>
															</h4>
															<p>
																<span class="text-price">200.000đ</span>
															<div>
																<a href="" class="rm-btn-buynow" title="Mua ngay">Mua
																	ngay</a>
															</div>
															</p>
														</div></li>

												</div>
												<div class="list-group col-sm-3 col-md-3"
													style="text-align: center; padding-top: 10px;">

													<li class="list-group-item "><img class="w-100"
														src="/sanpham/5d4982f269fda3bbed6f5e4e1b6d41f8_tn.jpg"
														alt=" "> <span class="text-new">Mới</span>
														<div class="rmitem-caption">
															<h4>
																<a href="#" title="Quạt tản nhiệt DL01">Quạt tản
																	nhiệt DL01</a>
															</h4>
															<p>
																<span class="text-price">200.000đ</span>
															<div>
																<a href="" class="rm-btn-buynow" title="Mua ngay">Mua
																	ngay</a>
															</div>
															</p>
														</div></li>

												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
		</div>
	</div>
	 <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
            integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
            crossorigin="anonymous">
  </script>
	</body>
</html>