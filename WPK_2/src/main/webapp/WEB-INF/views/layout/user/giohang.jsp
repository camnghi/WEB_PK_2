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
						<form action="/giohang/form" method="post">
							<c:forEach var="gh" items="${ghs}">
								<tr>
<%-- 									<td><img alt="" src="/img/${ctgh.sanpham.anhSp}" --%>
<!-- 										width="100px"> -->
<%-- 									<td>${gh.sanpham.tenSp} --%>
<%-- 									<td>${gh.sanpham.giaSp}</td> --%>
<%-- 									<td><input name="soLuong" value="${ctgh.sanpham.soluong}" --%>
<!-- 										onblur="this.form.submit()" style="width: 50px;"></td> -->
<%-- 									<td>${ctgh.sanpham.giaSp * sanpham.soluong}</td> --%>
<%-- 									<td><a href="${idGH.sanpham}">Xóa</a></td> --%>
<td>${gh.taiKhoan }</td>
								</tr>
							</c:forEach>

						</form>
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
