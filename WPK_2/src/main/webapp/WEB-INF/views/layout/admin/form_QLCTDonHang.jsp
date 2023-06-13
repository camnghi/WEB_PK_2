<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<span class="title">QUẢN LÝ Chi Tiết ĐƠN HÀNG</span>
<hr>
<form action="/quanLyDonHang/form?keyword=${keywords}" method="post">
	<div class="card-body">
		<!-- tìm kiếm -->

		<div class="timkiem">
			<input type="text" class="form-control-sm"
				aria-label=".form-control-sm example"
				placeholder="Nhập tên tìm kiếm"> <a name="keywords" id=""
				class="btn btn-secondary btn-sm">Tìm kiếm</a>
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
							<%-- 							<td>${item.hoadonchitiet.sanpham.tenSp }</td>
 --%>
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
	</div>
</form>
