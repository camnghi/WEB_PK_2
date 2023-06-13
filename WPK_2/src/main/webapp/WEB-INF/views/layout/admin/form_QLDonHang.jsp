<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<span class="title">QUẢN LÝ ĐƠN HÀNG</span>
<hr>
	<div class="card-body">
		<!-- tìm kiếm -->
<form action="">
		<div class="timkiem">
			<input name="keywords" type="text" class="form-control-sm"
				aria-label=".form-control-sm example" placeholder="Nhập tên tìm kiếm"> 
				<button name="keywords" id="" class="btn btn-secondary btn-sm"  >Tìm kiếm</button>
		</div>
	</form>
	
		<div class="table-responsive">
			<table class="table">
				<thead>
					<tr>
						<th scope="col">ID đơn hàng</th>
						<th scope="col">Tài khoản người dùng</th>
						<th scope="col">Tổng giá sản phẩm</th>
						<th scope="col">Trạng thái</th>
						<th scope="col">Xem chi tiết</th>
						<th scope="col">Duyệt</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${items}">
						<tr class></tr>
							<td>${item.idHd }</td>
							<td>${item.khachhang.taiKhoan}</td>
							<td>${item.tongTien }</td>
							<td>${item.trangThai ? 'Đã duyệt' : 'Chưa duyệt' }</td>
							<td>
							<button name="" id class="btn btn-success btn-sm"
									formaction="/indexAD/edit/${item.idHd}" role="button"
									style="width: 100px;" >xem</button>
							</td>
							<td>
								<button name="" id class="btn btn-success btn-sm"
									formaction="/quanLyDonHang/edit/${item.idHd}" role="button"
									style="width: 100px;" disabled="true">Duyệt</button>
								<button class="btn btn-warning btn-sm"
									formaction="/quanLyDonHang/edit/${item.idHd}" role="button"
									style="width: 100px;">Hủy</button>
							</td>
					</c:forEach>



				</tbody>
			</table>
		</div>
	</div>
