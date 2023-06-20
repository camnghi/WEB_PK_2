<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<span class="title">QUẢN LÝ ĐƠN HÀNG</span>
<hr>
<div class="card-body">
	<!-- tìm kiếm -->
	<form action="/quanLyDonHang/form" method="post">
		<div class="timkiem">
			<input name="keywords" value="">
			<button>Tìm kiếm</button>
		</div>


		<div class="table-responsive">
			<table class="table">
				<thead>
					<tr>
						<th scope="col"><a href="/quanLyDonHang/form?field=idHd"
							style="color: red; text-decoration: none;">ID đơn hàng</a></th>
						<th scope="col"><a
							href="/quanLyDonHang/form?field=khachhang.taiKhoan"
							style="color: red; text-decoration: none;">Tài khoản</a></th>
						<th scope="col"><a href="/quanLyDonHang/form?field=tongTien"
							style="color: red; text-decoration: none;">Tổng tiền</a></th>
						<th scope="col">Trạng thái</th>
						<th scope="col">Xem chi tiết</th>
						<th scope="col">Duyệt</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${page.content}">
						<tr class></tr>
						<td>${item.idHd }</td>
						<td>${item.khachhang.taiKhoan}</td>
						<td>${item.tongTien }</td>
						<td>${item.trangThai}</td>

						<td>
							<button name="" class="btn btn-success btn-sm"
								formaction="/quanLyCTDonhang/editHD/${item.idHd}" role="button"
								style="width: 100px;">Xem</button>
						</td>
						<td>
<!-- 						<button name="" class="btn btn-success btn-sm" -->
<!-- 								formaction="/capnhattrangthai/form" role="button" -->
<!-- 								style="width: 100px;">Cập nhật hóa đơn	</button> -->
							<button name="" class="btn btn-success btn-sm"
								formaction="/capnhattrangthai/edit/${item.idHd}" role="button"
								style="width: 100px;">Cập nhật hóa đơn	</button>
						</td>

						<%-- 					<td>
							<button name="" id="duyetButton" onclick="duyetHoaDon()"
								class="btn btn-success btn-sm"
								formaction="/quanLyDonHang/edit/${item.idHd}" role="button"
								style="width: 100px;">Duyệt</button>
							<button id="huyButton" onclick="huyDuyet()" style="width: 100px;"
								class="btn btn-warning btn-sm"
								formaction="/quanLyDonHang/edit/${item.idHd}" role="button"
								style="display:none;">Hủy</button> <script>
									function duyetHoaDon() {
										var duyetButton = document
												.getElementById("duyetButton");
										var huyButton = document
												.getElementById("huyButton");
										// Ẩn nút "Duyệt" và hiển thị nút "Hủy"
										duyetButton.style.display = "none";
										huyButton.style.display = "inline-block";
									}
									function huyDuyet() {
										// Lấy nút "Duyệt" và nút "Hủy" theo ID
										var duyetButton = document
												.getElementById("duyetButton");
										var huyButton = document
												.getElementById("huyButton");

										// Ẩn nút "Hủy" và hiển thị nút "Duyệt"
										huyButton.style.display = "none";
										duyetButton.style.display = "inline-block";
									}
								</script>

						</td> --%>

					</c:forEach>
				</tbody>
			</table>
			<c:forEach var="i" begin="0"
				end="${page.totalPages - 1 < 0 ? 0 : page.totalPages - 1}">
				<a href="/quanLyDonHang/form?keywords=${keywords}&p=${i}">${i + 1}</a>
			</c:forEach>
		</div>
	</form>
</div>
