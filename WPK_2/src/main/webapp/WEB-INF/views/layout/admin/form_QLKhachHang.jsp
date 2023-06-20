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
					<button>Tìm kiếm</button>
				</div>
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
							<td>${item.trangThai}</td>
							<td>${item.admin}</td>
							<td></td>
						</tr>
					</c:forEach>
				</table>
				<c:forEach var="i" begin="0"
					end="${page.totalPages - 1 < 0 ? 0 : page.totalPages - 1}">
					<a href="/quanLyKhachHang/form?keyword=${keywords}&p=${i}">${i + 1}</a>
				</c:forEach>
			</div>
			<br>
			<ul>
				<li>Số thực thể hiện tại: ${page.numberOfElements}</li>
				<li>Trang số: ${page.number + 1}</li>
				<li>Tổng số thực thể: ${page.totalElements}</li>
				<li>Tổng số trang: ${page.totalPages}</li>
			</ul>
		</div>
	</div>
</div>

