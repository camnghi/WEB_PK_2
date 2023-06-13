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
							<th>${listGH}</th>
						</tr>
						<c:forEach var="giohangct" items="${giohang.chitietgiohang}">
							<form action="/giohang/form" method="post">
								<tr>
									<td><img alt="" src="/img/${giohangct.sanpham.anhSp}"
										width="100px">
									<td>${giohangct.sanpham.tenSp}
									<td>${giohangct.sanpham.giaSp}</td>
									<td><input name="soLuong"
										value="${item.chitietgiohang.soluong}"
										onblur="this.form.submit()" style="width: 50px;"></td>
									<td>${giohangct.sanpham.giaSp * chitietgiohang.soluong}</td>
									<td><a href="${giohangct.sanpham.idGHCT}">Xóa</a></td>
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
