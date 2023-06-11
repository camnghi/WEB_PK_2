<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
<title>Quản lý chi tiết sản phẩm</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="/css/indexAD.css">
<!-- Bootstrap CSS v5.2.1 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">

</head>

<body>
	
	<div class="row">
		<div class="col-sm-3 col-md-3 col-lg-3">
			<div class="d-flex flex-column flex-shrink-0 p-3 bg-light"
				style="width: 280px; height: 700px;">
				<a href="/indexAD/form"
					class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
					<svg class="bi me-2" width="40" height="40">
						<use xlink:href="#people-circle" /></svg> <span class="fs-4">ADMIN</span>
				</a>
				<hr>
				<ul class="nav nav-pills flex-column mb-auto">
					<li class="mb-1">
						<button
							class="btn btn-toggle align-items-center rounded collapsed"
							data-bs-toggle="collapse" data-bs-target="#sanpham-collapse"
							aria-expanded="true">
							<svg class="bi me-2" width="16" height="16">
								<use xlink:href="#grid" /></svg>
							Quản lý sản phẩm
						</button>
						<div class="collapse show" id="sanpham-collapse">
							<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
								<li><a href="/quanLySanPham/form" class="link-dark rounded">
										Thông tin sản phẩm</a></li>
								<li><a href="/quanLyChiTietSanPham/form"
									class="link-dark rounded"> Chi tiết sản phẩm</a></li>
								<li><a href="/phanLoaiSP/form" class="link-dark rounded">
										Phân loại sản phẩm</a></li>
							</ul>
						</div>
					</li>

					<li class="mb-1"><a href="/quanLyKhachHang/form"
						class="nav-link link-dark"> <svg class="bi me-2" width="16"
								height="16">
								<use xlink:href="#speedometer2" /></svg> Quản lý khách hàng
					</a></li>
					<li class="mb-1"><a href="#" class="nav-link link-dark"> <svg
								class="bi me-2" width="16" height="16">
								<use xlink:href="#table" /></svg> Quản lý đơn hàng
					</a></li>
					<li class="mb-1">
						<button
							class="btn btn-toggle align-items-center rounded collapsed"
							data-bs-toggle="collapse" data-bs-target="#thongke-collapse"
							aria-expanded="true">
							<svg class="bi me-2" width="16" height="16">
								<use xlink:href="#people-circle" /></svg>
							Quản lý thống kê
						</button>
						<div class="collapse" id="thongke-collapse">
							<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
								<li><a
									href="/quanLyThongKe/form"
									class="link-dark rounded"> Top sản phẩm bán chạy</a></li>
								<li><a
									href="/quanLyThongKe/form"
									class="link-dark rounded"> Doanh thu theo thời gian</a></li>
							</ul>
						</div>
					</li>
				</ul>
				<hr>
				<div class="dropdown">
					<a href="#"
						class="d-flex align-items-center link-dark text-decoration-none dropdown-toggle"
						id="dropdownUser2" data-bs-toggle="dropdown" aria-expanded="false">
						<img src="https://github.com/mdo.png" alt width="32" height="32"
						class="rounded-circle me-2"> <strong>Tài khoản đang
							dùng</strong>
					</a>
					<ul class="dropdown-menu text-small shadow"
						aria-labelledby="dropdownUser2">
						<li><a class="dropdown-item" href="#">Thông tin</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" href="#">Đăng xuất</a></li>
					</ul>
				</div>
			</div>
		</div>

		<div class="col-sm-9 col-md-9 col-lg-9">
			  <jsp:include page="${form_QLCTSanPham}"></jsp:include>
		</div>
	</div>
	<!-- Bootstrap JavaScript Libraries -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
		crossorigin="anonymous">
		
	</script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
		integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
		crossorigin="anonymous">
		
	</script>
</body>

</html>