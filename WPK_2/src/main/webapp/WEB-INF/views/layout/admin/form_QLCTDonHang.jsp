<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<span class="title">QUẢN LÝ Chi Tiết ĐƠN HÀNG</span>
<hr>
<form action="/quanLyCTDonhang/form" modelAttribute="hoadon">
	<div class="alert alert-primary" role="alert">
		<div class="card">
			<div class="card-body">
				<div class="row">
					<!-- Thông tin khách hàng -->
					<div class="col-sm-6 col-md-6 col-lg-6">
						<span>Thông tin khách hàng</span>
						<hr>
						<table class="table">
							<thead>
								<tr>

									<th scope="col">Tài khoản</th>
									<th>${hoadon.khachhang.taiKhoan }</th>

								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">Tên khách hàng</th>
									<td>${ hoadon.khachhang.hoTen}</td>
								</tr>

								<tr>
									<th scope="row">Số điện thoại</th>
									<td>${ hoadon.sdt}</td>
								</tr>
								<tr>
									<th scope="row">Ngày đặt hàng</th>
									<td>${ hoadon.ngayTao}</td>
								</tr>
								<tr>
									<th scope="row">Email</th>
									<td>${ hoadon.khachhang.email}</td>

								</tr>

							</tbody>
						</table>

					</div>
					<div class="col-sm-6 col-md-6 col-lg-6">
						<span>Chi tiết hóa đơn</span>
						<hr>
						<table class="table">
							<thead>
								<tr>

									<th scope="col">Mã đơn hàng</th>
									<td>${hoadon.idHd}</td>

								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="col">Thành tiền</th>

									<c:set var="totalAmount" value="0" />
									<c:forEach var="hoadon" items="${hoadon.hoadonchitiet}">
										<c:set var="productTotal" value="${hoadon.soLuong * hoadon.gia}" />
										<c:set var="totalAmount" value="${totalAmount + productTotal}" />
									</c:forEach>

									<td>${totalAmount}</td>
									<!-- Hiển thị tổng tổng tiền -->

									</td>

								</tr>


							</tbody>
						</table>

					</div>
				</div>


			</div>

			<div class="card-body">
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th scope="col">#</th>
								<th scope="col">Ảnh SP</th>
								<th scope="col">Tên SP</th>
								<th scope="col">Số lượng</th>
								<th scope="col">Tổng</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="hoadon" items="${hoadon.hoadonchitiet}">

								<tr class="">
									<td scope="row">0</td>
									<td>${hoadon.sanpham.anhSp }</td>
									<td>${hoadon.sanpham.tenSp }</td>
									<td>${hoadon.soLuong }</td>

									<td>${hoadon.soLuong*hoadon.gia}</td>
								</tr>

							</c:forEach>
						
						</tbody>
					</table>
				</div>

			</div>
		</div>


	</div>
	<%-- <div class="card-body">
		<!-- tìm kiếm -->

		<div class="timkiem">
			<input type="text" class="form-control-sm"
				aria-label=".form-control-sm example"
				placeholder="Nhập tên tìm kiếm"> <a name="keywords" id=""
				class="btn btn-secondary btn-sm">Tìm kiếm</a>
		</div>
<div>

</div>
		<div class="table-responsive">

			<table class="table">
				<thead>
					<tr>
						<th scope="col">ID đơn hàng chi tiết</th>
						<th scope="col">Tên sản phẩm</th>
						<th scope="col">Số lượng</th>
						<th scope="col">Giá</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${items}">

						<tr class>
							<td>${item.idHd }</td>
							<td>${item..taiKhoan}</td>
							<td>${item.tongTien }</td>
							<td>${item.trangThai }</td>
							<td><a name="" id class="btn btn-success btn-sm" href="#"
								role="button" style="width: 100px;">Duyệt</a> <a name id
								class="btn btn-warning btn-sm" href="#" role="button"
								style="width: 100px;">Hủy</a></td>
						</tr>

					</c:forEach>



				</tbody>
			</table>
		</div>
	</div> --%>
</form>
