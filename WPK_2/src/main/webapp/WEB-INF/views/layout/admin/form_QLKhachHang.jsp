<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">

<div class="alert alert-primary" role="alert">
	<h4 class="card-title">QUẢN LÝ KHÁCH HÀNG</h4>
	<div class="card">
		<form:form action="/quanLyKhachHang/form?keyword=${keywords}"
			modelAttribute="thuonghieu" method="POST">
			<div class="card-body">
				<div class="timkiem">
					<input name="keywords" placeholder="Nhập tên khách hàng" value="${keywords}">
					<button>Tìm</button>
				</div>
			</div>
		</form:form>
		<div class="dropdown" style="padding: 20px">
			<button class="btn btn-secondary dropdown-toggle" type="button"
				data-bs-toggle="dropdown" aria-expanded="false">Chọn trạng
				thái lọc</button>
			<ul class="dropdown-menu">
				<li><a class="dropdown-item" href="/quanLyKhachHang/active">Đã
						kích hoạt</a></li>
				<li><a class="dropdown-item" href="/quanLyKhachHang/unactive">
						Chưa kích hoạt</a></li>
			</ul>
		</div>

		<div class="dropdown" style="padding: 20px">
			<button class="btn btn-secondary dropdown-toggle" type="button"
				data-bs-toggle="dropdown" aria-expanded="false">Chọn loại
				tài khoản lọc</button>
			<ul class="dropdown-menu">
				<li><a class="dropdown-item"
					href="/quanLyKhachHang/adminCustomers">Admin</a></li>
				<li><a class="dropdown-item" href="/quanLyKhachHang/unadminCustomers">Khách
						hàng</a></li>
			</ul>
		</div>
		<div class="card-body">
			<!-- tìm kiếm -->
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th scope="col"><a
								href="/quanLyKhachHang/form?field=taiKhoan">Tài khoản</a></th>
							<!-- <th scope="col">password</th> -->
							<th scope="col"><a href="/quanLyKhachHang/form?field=hoTen">Tên
									khách hàng</a></th>
							<th scope="col"><a href="/quanLyKhachHang/form?field=email">Email</a></th>
							<th scope="col"><a
								href="/quanLyKhachHang/form?field=trangThai">Trạng thái</a></th>
							<th scope="col">Admin</th>
							<th></th>
						</tr>
					</thead>
					<c:forEach var="item" items="${page.content}">
						<tr>
							<td>${item.taiKhoan}</td>
							<td>${item.hoTen}</td>
							<td>${item.email}</td>
							<td><c:if test="${item.trangThai == true}"> 
			 						Đã kích hoạt
			 					</c:if> <c:if test="${item.trangThai == false}"> 
			 						Chưa kích hoạt
			 					</c:if></td>

							<td><c:if test="${item.admin == true}"> 
			 						Admin
			 					</c:if> <c:if test="${item.admin == false}"> 
			 						Khách hàng
			 					</c:if></td>
							<td></td>
						</tr>
					</c:forEach>
					<c:forEach var="khachhang" items="${khachhangs}">
						<tr>
							<td>${khachhang.taiKhoan}</td>
							<td>${khachhang.hoTen}</td>
							<td>${khachhang.email}</td>
							<td><c:if test="${khachhang.trangThai == true}"> 
			 						Đã kích hoạt
			 					</c:if> <c:if test="${khachhang.trangThai == false}"> 
			 						Chưa kích hoạt
			 					</c:if></td>

							<td><c:if test="${khachhang.admin == true}"> 
			 						Admin
			 					</c:if> <c:if test="${khachhang.admin == false}"> 
			 						Khách hàng
			 					</c:if></td>
						</tr>
					</c:forEach>

				</table>
				<c:forEach var="i" begin="0"
					end="${page.totalPages - 1 < 0 ? 0 : page.totalPages - 1}">
					<a href="/quanLyKhachHang/form?keyword=${keywords}&p=${i}">${i + 1}</a>
				</c:forEach>
			</div>
			<br>
		</div>
	</div>
</div>
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