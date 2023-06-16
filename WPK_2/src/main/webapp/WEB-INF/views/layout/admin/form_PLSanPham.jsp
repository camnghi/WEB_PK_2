<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<div class="alert alert-primary" role="alert">
	<h4 class="card-title">PHÂN LOẠI</h4>
	<div class="card">
		<form:form action="/phanLoaiSP/create" modelAttribute="loaisanpham" method="POST">
			<div class="card-body">
				<!-- Id loại  -->
				<div class="row">
					<form:input path="idLoai" placeholder="Id" hidden="hidden" />
					<br>
					<div class="col-sm-6 col-md-6 col-lg-6">
						<span>Tên loại</span> <br>
						<form:input path="tenLoai" placeholder="Tên sản phẩm" class="form-control form-control-sm" />
						<br>
						 
					</div>

					<!-- Button -->
					<div class="col-sm-6 col-md-6 col-lg-6">
						<span>Chức năng</span> <br> <button
							class="btn btn-primary btn-sm" formaction="/phanLoaiSP/form"
							role="button">Mới</button> <button  class="btn btn-success btn-sm"
							formaction="/phanLoaiSP/create" role="button">Thêm</button> <button
							class="btn btn-warning btn-sm" formaction="/phanLoaiSP/update"
							role="button">Sửa</button>
					</div>
				</div>
				<!-- tìm kiếm -->
				<hr>
				<div class="timkiem">
					<input name="keywords" value="">
					<button>Tìm kiếm</button>
				</div>

			</div>
		</form:form>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th scope="col"><a href="/phanLoaiSP/form?field=idLoai" style="color:red; text-decoration: none;">Id Loại</a></th>
							<th scope="col"><a href="/phanLoaiSP/form?field=tenLoai" style="color:red; text-decoration: none;">Tên loại</a></th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="loaiSanPham" items="${page.content}">
							<tr>
								<td scope="row">${loaiSanPham.idLoai}</td>
								<td>${loaiSanPham.tenLoai}</td>
								<td><a href="/phanLoaiSP/edit/${loaiSanPham.idLoai}"
									class="btn btn-success btn-sm">Edit</a> <a name id
									class="btn btn-danger btn-sm"
									href="/phanLoaiSP/delete/${loaiSanPham.idLoai}" role="button">Xóa</a></td>
							</tr>
						</c:forEach>
					</tbody>
					
					
				</table>
				<c:forEach var="i" begin="0"
						end="${page.totalPages - 1 < 0 ? 0 : page.totalPages - 1}">
						<a href="/phanLoaiSP/form?keywords=${keywords}&p=${i}">${i + 1}</a>
				</c:forEach>
			</div>
		</div>
	
	</div>
</div>
