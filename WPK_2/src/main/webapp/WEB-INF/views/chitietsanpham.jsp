<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chi tiết sản phẩm</title>
</head>
<link rel="stylesheet" href="/css/nav.css">
<link rel="stylesheet" href="/css/footer.css">
<link rel="stylesheet" href="/css/chitietsanpham.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">


<body>
	<%--Đây là NAV--%>
	<%@include file="layout/user/nav.jsp"%>
	<%--Đây là NAV --%>


	<div class="container bg-while rm-slide-detail">

		<div class="row">
			<div class="col-md-8">
				<div class="col-md-8">
					<div>
						<img src="/sanphams/${item.anhSp}" alt="" class="w-100"
							style="padding-right: 50px">
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<form action="chitiet/add" method="post">
					<div class="content-right">
						<h1 class="text-h1">${item.tenSp}</h1>
						<div class="rm-price">
							<span class="rm-sale">Giá: ${df.format(item.giaSp)}VNĐ</span> <span
								class="rm-icondesktop-price">Còn hàng</span>
						</div>
						<div class="form-button">
							<div class="row">

								<div class="col-md-6">
									<label>Số lượng</label> <input type="number" value="1" min="1">
								</div>
							</div>
							<div class="row">
								<li class="inpr"><span> <a href="" target="_blank"
										style="text-decoration: none;">Chính sách bảo hành</a>
								</span></li>
							</div>
							<div class="row">
								<div class="col-md-7">
									<div id="rm-booking" class="input-group">
										<a href="/giohang/themvaogiohang/${item.idSp}">
											<div type="button" class="big-button button-red left">
												<strong>THÊM VÀO GIỎ HÀNG</strong>
											</div>
										</a>

									</div>
									<br>
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
				</form>
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
							aria-selected="false">Thống kê kỹ thuật</button>
					</li>
				</ul>
				<div class="tab-content" id="myTabContent">
					<form action="index/form" modelAttribute="item">
						<div class="tab-pane fade show active" id="gioithieu-tab-pane"
							role="tabpanel" aria-labelledby="gioithieu-tab" tabindex="0">

							<p>${item.moTa }</p>

						</div>
					</form>
					<div class="tab-pane fade" id="thongkekythuat-tab-pane"
						role="tabpanel" aria-labelledby="thongkekythuat-tab" tabindex="0">
						<form action="index/form" modelAttribute="item">
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
										<td>${item.tenSp }</td>
									</tr>
									<tr>
										<th scope="row">Thương hiện</th>
										<td>${item.thuonghieu.tenTh }</td>
									</tr>
								</tbody>
							</table>
						</form>

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
										<c:forEach var="item" items="${items }">
											<div class="list-group col-sm-3 col-md-3"
												style="text-align: center; padding-top: 10px;">

												<li class="list-group-item "><img class="w-100"
													src="/sanphams/${item.anhSp}" alt=" "> <span
													class="text-new">Mới</span>
													<div class="rmitem-caption">
														<h4>
															<a href="#" title="Quạt tản nhiệt DL01">${item.tenSp }</a>
														</h4>
														<p>
															<span class="text-price">${df.format(item.giaSp)}VNĐ</span>
														<div>
															<a href="" class="rm-btn-buynow" title="Mua ngay">Thêm
																vào giỏ hàng</a>
														</div>
														</p>
													</div></li>
											</div>
										</c:forEach>
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
	<%--Đây là footer--%>
	<%@include file="layout/user/footer.jsp"%>
	<%--Đây là footer--%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>
</body>
</html>