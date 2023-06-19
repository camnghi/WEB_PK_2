<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="container">
	<div class="card">
		<form action="/lichsu/form  method="POST">
			<div class="card-header">
				<ul id="menu"
					style="display: flex; list-style: none; text-decoration: none;">
					<li><a href="/">Chờ xác nhận</a></li>
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
					<li><a href="/">Đã xác nhận</a></li>
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
					<li><a href="/lichsu/hoadon/${trangThai}">Chờ lấy hàng </a></li>
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
					<li><a href="/">Đang vận chuyển</a></li>
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
					<li><a href="/">Đã giao hàng</a></li>
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
					<li><a href="/">Đã hủy</a></li>
				</ul>
			</div>
		</form>
		<div class="card-body">
			<table class="table">
				<c:forEach var="hoadon" items="${hoadons}">
					<tr>
						<th>TÊN KHÁCH HÀNG</th>
						<th>NGÀY TẠO</th>
						<th>ĐỊA CHỈ</th>
						<th>SỐ ĐIỆN THOẠI</th>
						<th>TỔNG TIỀN</th>
						<th>TRẠNG THÁI</th>
					</tr>
					<tr>
						<td>${hoadon.khachHang.tenKhachHang}</td>
						<td>${hoadon.ngayTao}</td>
						<td>${hoadon.diaChi}</td>
						<td>${hoadon.sdt}
						<td>${hoadon.tongTien}</td>
						<td>${hoadon.trangThai}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
	<br>
</div>
