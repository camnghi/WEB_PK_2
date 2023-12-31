<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<span class="title">QUẢN LÝ ĐƠN HÀNG</span>
<hr>
<div class="card-body">
	<!-- tìm kiếm -->
	<form:form action="/quanLyDonHang/form?keyword=${keywords}"
		modelAttribute="hoadon" method="post">
		<div class="timkiem">
			<input name="keywords" value="${keywords}">
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
					<td>${df.format(item.tongTien)}VNĐ</td>					
					<td>${item.trangThai}</td>

					<td>
						<button name="" class="btn btn-success btn-sm"
							formaction="/quanLyCTDonhang/editHD/${item.idHd}" role="button"
							style="width: 100px;">Xem</button>
					</td>
					<td>
						<!-- 						<button name="" class="btn btn-success btn-sm" --> <!-- 								formaction="/capnhattrangthai/form" role="button" -->
						<!-- 								style="width: 100px;">Cập nhật hóa đơn	</button> -->
						<button name="" class="btn btn-success btn-sm"
							formaction="/capnhattrangthai/edit/${item.idHd}" role="button"
							style="width: 100px;">Cập nhật hóa đơn</button>
					</td>

				</c:forEach>
			</tbody>
		</table>
		<c:forEach var="i" begin="0"
			end="${page.totalPages - 1 < 0 ? 0 : page.totalPages - 1}">
			<a href="/quanLyDonHang/form?keywords=${keywords}&p=${i}">${i + 1}</a>
		</c:forEach>
	</div>
		</form:form>
</div>
