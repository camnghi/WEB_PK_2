<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<div class="container">
	<div class="row">
		<div class="col-lg-6">
			<div class="card">
				<div class="card-body">
					<table class="table">
						<tr>
							<th></th>
							<th>SẢN PHẨM</th>
							<th>GIÁ</th>
							<th>SỐ LƯỢNG</th>
							<th>TỔNG TIỀN</th>
							<th></th>
						</tr>
						<c:forEach var="item" items="${items}">
							<form action="/cart/update/${item.id_sp}" method="post">
								<input type="hidden" name="id_sp" value="${item.id_sp}">
								<tr>
									<td><img alt="" src="/img/${item.anh}" width="100px">
									<td>${item.ten_sp}
									<td>${item.gia}</td>
									<td><input name="soLuong" value="${item.soLuong}"
										onblur="this.form.submit()" style="width: 50px;"></td>
									<td>${item.gia * item.soLuong}</td>
									<td><a href="/cart/remove/${item.id}">Xóa</a></td>
								</tr>
							</form>
						</c:forEach>
					</table>
					<button class="btn btn-outline-light bg-secondary"
						style="float: right;">Cập nhật giỏ hàng</button>
					<button class="btn btn-outline-light bg-secondary"
						style="float: right;">Tiếp tục xem sản phẩm</button>
				</div>
			</div>
		</div>
		<div class="col-lg-6">
			<div class="card">
				<div class="card-body">
					<table class="table">
						<tr>
							<th>TỔNG SẢN PHẨM</th>
							<th></th>
						</tr>
						<tr>
							<td>Tổng tiền</td>
							<th>150</th>
						</tr>
					</table>
					<a class="btn btn-outline-light bg-warning" style="float: right;"
						href="/dathang/form">Tiếp tục</a>
				</div>
			</div>
			<br> <a class="btn btn-outline-light bg-warning"
				style="float: right;" href="/lichsu/form">Lịch sử mua hàng</a>

		</div>
	</div>
</div>
