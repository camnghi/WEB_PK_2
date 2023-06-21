<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<div class="container">
	<div class="row">
		<div class="col-lg-8">
			<div class="card">
				<div class="card-body">
					<table class="table">
						<thead>
							<tr>
								<th></th>
								<th>Sản phẩm</th>
								<th>Đơn giá</th>
								<th>Số lượng</th>
								<th>Thành tiền</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${giohang.chitietgiohangs}"
								var="chiTietGioHang">

								<tr>
									<td><img src="/sanphams/${chiTietGioHang.sanpham.anhSp}"
										alt="${chiTietGioHang.sanpham.tenSp}" width="60px"></td>
									<td>${chiTietGioHang.sanpham.tenSp}</td>
									<td>${df.format(chiTietGioHang.sanpham.giaSp)}VNĐ</td>

									<td>
										<form action="/giohang/capnhat/${chiTietGioHang.id_ctgh}"
											method="post">
											<input type="number" name="soLuong"
												value="${chiTietGioHang.soLuong}" min="1"
												max="${chiTietGioHang.sanpham.soLuong}" style="width: 50px;">
											<button type="submit" class="btn btn-primary btn-sm">Cập nhật</button>
										</form>
									</td>
									<td>${df.format(chiTietGioHang.sanpham.giaSp * chiTietGioHang.soLuong)}
										VNĐ</td>
									<td>
										<form action="/giohang/xoasanpham/${chiTietGioHang.id_ctgh}"
											method="post">
											<button type="submit" class="btn btn-outline-danger btn-sm">Xóa</button>
										</form>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="col-lg-4">
			<div class="card">
				<div class="card-body">
					<table class="table">
						<tbody>
							<tr>
								<td>Tổng số sản phẩm:</td>
								<td>${giohang.tongSoSanPham()}</td>
							</tr>
							<tr>
								<td>Tổng tiền</td>
								<td>${df.format(giohang.tongTien())}VNĐ</td>
							</tr>
						</tbody>
					</table>
					<div class="text-center">
						<a href="/giohang/datHang" class="btn btn-warning btn-block">Tiến hành đặt hàng</a> <a href="/index/form"
							class="btn btn-secondary btn-block">Tiếp tục mua sắm</a> <br>
						<br> <a href="/lichsu/form" class="btn btn-outline-secondary btn-block">Xem lịch sử mua hàng</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
