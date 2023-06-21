<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<body>
	<div class="container">
		<div class="row">
			<div class="col-lg-6">
				<div class="card">
					<div class="card-header">
						<div class="card-title">
							<h5>CHI TIẾT ĐƠN HÀNG</h5>
						</div>
					</div>
					<div class="card-body">
						<form>
							<div class="mb-3">
								<label class="form-label">Họ Tên</label> <input
									type="text" name="hoTen" value="${hoTen}" required class="form-control" id="name" required
									placeholder="Nhập họ tên">
							</div>
							<div class="mb-3">
								<label for="phone" class="form-label">Số Điện Thoại:</label> <input
									type="text" class="form-control" id="phone"
									placeholder="Nhập số điện thoại">
							</div>
							<div class="mb-3">
								<label for="Address" class="form-label">Địa Chỉ</label> <input
									type="text" class="form-control" required id="Address"
									placeholder="Nhập địa chỉ">
							</div>
							<div class="mb-3">
								<label for="email" class="form-label">Email</label> <input
									type="text" class="form-control" required id="email"
									placeholder="Nhập email" name="email" value="${email}">
							</div>
							<div class="mb-3">
								<label for="note" class="form-label">Ghi chú</label>
								<textarea name="note" id="note" cols="67" rows="3"></textarea>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="card-body">
					<div class="card">
						<div class="card-header">
							<div class="card-title">
								<h5>XÁC NHẬN ĐẶT HÀNG</h5>
							</div>
						</div>
						<div class="card-body">
							<table class="table">
								<tr>
									<th>Ảnh</th>
									<th>SẢN PHẨM</th>
									<th></th>
									<th>THÀNH TIỀN</th>
								</tr>
								<c:forEach items="${giohang.chitietgiohangs}" var="chiTietGioHang">
									<tr>
										<td><img src="/sanphams/${chiTietGioHang.sanpham.anhSp}" alt="${chiTietGioHang.sanpham.tenSp}" width="60px"></td>
										<td>${chiTietGioHang.sanpham.tenSp} x ${chiTietGioHang.soLuong}</td>
										<td><td>${df.format(chiTietGioHang.sanpham.giaSp * chiTietGioHang.soLuong)}VNĐ</td></td>
									</tr>
									
								</c:forEach>
								<tr> 
								<th></th>
								<th></th>
									<th>TỔNG TIỀN:</th>
									<th>${df.format(tongTien)}VNĐ</th>
								</tr>
							</table>
							<button class="btn btn-outline-light bg-warning"
								style="float: right;">Thanh toán</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>