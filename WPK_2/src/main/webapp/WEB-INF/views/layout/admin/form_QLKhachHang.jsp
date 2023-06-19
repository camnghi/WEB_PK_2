<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="alert alert-primary" role="alert">
	<h4 class="card-title">QUẢN LÝ KHÁCH HÀNG</h4>
	<div class="card">
		<form:form action="/quanLyKhachHang/form?keyword=${keywords}"
			modelAttribute="thuonghieu" method="POST">
			<div class="card-body">
				<div class="timkiem">
					<input name="keywords" value="${keywords}">
					<button>Tìm</button>
				</div>
				<br>
				<button>
					<a href="/quanLyKhachHang/active">Lọc trạng thái đang kích hoạt</a>
				</button>
				<button>
					<a href="/quanLyKhachHang/unactive">Lọc trạng thái đã khóa</a>
				</button>
			</div>
		</form:form>
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
			 						Đang sử dụng
			 					</c:if> <c:if test="${item.trangThai == false}"> 
			 						Đã khóa
			 					</c:if></td>
							<td>${item.admin}</td>
							<td></td>
						</tr>
					</c:forEach>

					<c:forEach var="khachhang" items="${khachhangs}">
						<tr>
							<td>${khachhang.taiKhoan}</td>
							<td>${khachhang.hoTen}</td>
							<td>${khachhang.email}</td>
							<td><c:if test="${khachhang.trangThai == true}"> 
			 						Đang sử dụng
			 					</c:if> <c:if test="${khachhang.trangThai == false}"> 
			 						Đã khóa
			 					</c:if></td>
							<td>${khachhang.admin}</td>
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