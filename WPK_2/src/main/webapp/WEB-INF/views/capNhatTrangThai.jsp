<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Cập nhật trạng thái</title>
<link rel="stylesheet" href="/css/indexAD.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
</head>

<body>

	<div class="row">
		<div class="col-sm-3 col-md-3 col-lg-3">
			<%@include file="layout/admin/navAD.jsp"%>
		</div>

		<div class="col-sm-9 col-md-9 col-lg-9">
			<form:form action="${pageContext.request.contextPath}/capnhattrangthai/update/${hoadon.idHd}" 
			method="POST" modelAttribute="hoadon" >
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
											readonly="true" value="${hoadon.idHd }"/></td>
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
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
		crossorigin="anonymous">
		
	</script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
		integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
		crossorigin="anonymous">
		
	</script>
</body>
</html>