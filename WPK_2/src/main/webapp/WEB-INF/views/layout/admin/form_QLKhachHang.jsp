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
					<input placeholder="Nhập tên khách hàng" dname="keywords" value="${keywords}">
					<button>
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
							fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
  <path
								d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
</svg>
						Tìm
					</button>
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
							<td><c:if test="${item.trangThai == true}"> 
			 						Đang sử dụng
			 					</c:if> 
			 					<c:if test="${item.trangThai == false}"> 
			 						Đã khóa
			 					</c:if>
			 				</td>
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
		</div>
	</div>
</div>

