<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<span class="title">BẢNG THÔNG TIN KHÁCH HÀNG</span>
<hr>
<form action>
	<div class="card-body">
		<!-- tìm kiếm -->

		<div class="timkiem">
			<input type="text" class="form-control-sm"
				aria-label=".form-control-sm example"
				placeholder="Nhập tên tìm kiếm"> <a name="" id=""
				class="btn btn-secondary btn-sm" href="#" role="button">Tìm kiếm</a>
		</div>

		<div class="table-responsive">

			<table class="table">
				<thead>
					<tr>
						<th scope="col">Tên tài khoản</th>
						<th scope="col">Tên khách hàng</th>
						<th scope="col">Địa chỉ</th>
						<th scope="col">Số điện thoại</th>
						<th scope="col">Email</th>
						<th scope="col">Tài khoản</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${items }">
						<tr class>
							<td>${item.username}</td>
							<td>${item.fullname }</td>
							<td>${item.hoadon.diachi }</td>
							<td>${item.hoadon.sdt }</td>
							<td>${item.email }</td>
							<td>${item.admin }</td>
						</tr>
					</c:forEach>



				</tbody>
			</table>
		</div>
	</div>
</form>
