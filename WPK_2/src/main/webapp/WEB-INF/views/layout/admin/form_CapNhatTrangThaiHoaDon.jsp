<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đơn hàng</title>
</head>
<body>
	<h1>Thông tin đơn hàng</h1>
	<form:form action="/capnhattrangthai/update" method="POST" 
		modelAttribute="hoadon">
		<div class="alert alert-primary" role="alert">
			<div class="card">
				<div class="card-body">
					<div class="row">
						<!-- Thông tin khách hàng -->
						<div class="col-sm-6 col-md-6 col-lg-6">
							<span>Thông tin khách hàng</span>
							<hr>
							<table class="table">
								<tr>
									<td>ID:</td>
									<td><form:input disabled="true" path="idHd"
											readonly="true" /></td>
								</tr>
								<tr>
									<td>Tài khoản:</td>
									<td><form:input disabled="true" path="khachhang.taiKhoan"
											readonly="true" /></td>
								</tr>
								<tr>
									<td>Tổng tiền</td>
									<td><form:input disabled="true" path="tongTien"
											readonly="true" /></td>
								</tr>
								<tr>
									<td>Ngày tạo</td>
									<td><form:input disabled="true" path="NgayTao"
											readonly="true" /></td>
								</tr>
								<tr>
									<td>Số điện thoại</td>
									<td><form:input disabled="true" path="sdt" readonly="true" /></td>
								</tr>
								<tr>
									<td>Địa chỉ</td>
									<td><form:input disabled="true" path="diaChi"
											readonly="true" /></td>
								</tr>
								<tr>
									<td>ghi chú</td>
									<td><form:textarea path="ghiChu" readonly="true" /></td>
								</tr>
								<tr>
									<td>Trạng thái:</td>
									<td><form:select path="trangThai">
											<form:option value="Chưa duyệt" label="Chưa duyệt" />
											<form:option value="Chờ vận chuyển" label="Chờ vận chuyển" />
											<form:option value="Chờ lấy hàng" label="Chờ lấy hàng" />
											<form:option value="Đang lấy hàng" label="Đang lấy hàng" />
											<form:option value="Đang vận chuyển" label="Đang vận chuyển" />
										</form:select></td>
								</tr>
								<tr>
									<td colspan="2">
										<%-- 										<button formaction="/quanLyDonHang/edit/${idHd}">Update</button> --%>
										<button type="submit">Update</button>

									</td>
								</tr>
							</table>

						</div>
					</div>
				</div>
			</div>

		</div>
	</form:form>
</body>
</html>