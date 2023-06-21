<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container">
	<div class="card-body">
		<div class="dropdown" style="float: left; padding: 30px">
			<button class="btn btn-secondary dropdown-toggle" type="button"
				data-bs-toggle="dropdown" aria-expanded="false">Chọn trạng thái lọc
				</button>
			<ul class="dropdown-menu">
				<li><a class="dropdown-item" href="/lichsu/cxn">Chờ xác nhận
						</a></li>
				<li><a class="dropdown-item" href="/lichsu/dxn">Đã xác nhận
						</a></li>
						<li><a class="dropdown-item" href="/lichsu/cvc">Chờ vận chuyển
						</a></li>
				<li><a class="dropdown-item" href="/lichsu/dvc">Đang vận chuyển
						</a></li>
						<li><a class="dropdown-item" href="/lichsu/dgh">Đã giao hàng
						</a></li>
				<li><a class="dropdown-item" href="/lichsu/bh">Bị hủy
						</a></li>
			</ul>
		</div>

		<table class="table">
			<thead>
				<tr>
					
					<th>Họ tên</th>
					<th>Địa chỉ</th>
					<th>Số điện thoại
					<th>Thành tiền</th>
					<th>Trạng thái</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="hoadon" items="${hoadons}">
					<tr>
						
						<td>${hoadon.khachhang.hoTen}</td>
						<td>${hoadon.diaChi}</td>
						<td>${hoadon.sdt}
						<td>${df.format(hoadon.tongTien)}VNĐ</td>
						<td>${hoadon.trangThai}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
