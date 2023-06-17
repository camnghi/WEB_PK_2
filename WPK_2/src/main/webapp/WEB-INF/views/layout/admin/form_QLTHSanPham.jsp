<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<style>
.mgs_errors {
	color: red;
	font-style: italic;
}
</style>

<div class="alert alert-primary" role="alert">
	<h4 class="card-title">THƯƠNG HIỆU</h4>
	<div class="card">
		<form:form action="/quanLyThuongHieu/form?keyword=${keywords}"
			modelAttribute="thuonghieu" method="POST">
			<div class="card-body">
				<!-- Id thuong hieu -->
				<div class="row">
					<form:input path="idTh" placeholder="Id" hidden="hidden" />
					<div class="col-sm-6 col-md-6 col-lg-6">
						<span>Tên thương hiệu</span> <br>
						<form:input path="tenTh" placeholder="Tên thương hiệu" />
						<br>
						<div Class="mgs_errors">${message}</div>
					</div>
					<div class="col-sm-6 col-md-6 col-lg-6">
						<span>Chức năng</span> <br>
						<button class="btn btn-primary"
							formaction="/quanLyThuongHieu/create">Thêm</button>
						<button class="btn btn-success"
							formaction="/quanLyThuongHieu/update">Sửa</button>
						<button class="btn btn-warning"
							formaction="/quanLyThuongHieu/form">Mới</button>
					</div>
				</div>
				<hr>
				<div class="timkiem">
					<input placeholder="Nhập tên thương hiệu"  name="keywords" value="${keywords}">
					<button>
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
							fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
  <path
								d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
</svg>
						Tìm
					</button>
				</div>
			</div>
		</form:form>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th scope="col"><a href="/quanLyThuongHieu/form?field=idTh">Id
									Thương hiệu</a></th>
							<th scope="col"><a href="/quanLyThuongHieu/form?field=tenTh">Tên
									Thương hiệu</a></th>
							<th></th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="thuonghieu" items="${page.content}">
							<tr>
								<td scope="row">${thuonghieu.idTh}</td>
								<td>${thuonghieu.tenTh}</td>
								<td>
								<td><a href="/quanLyThuongHieu/edit/${thuonghieu.idTh}">Edit</a>
									<a class="btn btn-danger btn-sm"
									href="/quanLyThuongHieu/delete/${thuonghieu.idTh}"
									role="button">Xóa</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<c:forEach var="i" begin="0"
					end="${page.totalPages - 1 < 0 ? 0 : page.totalPages - 1}">
					<a href="/quanLyThuongHieu/form?keyword=${keywords}&p=${i}">${i + 1}</a>
				</c:forEach>
			</div>
		</div>
	</div>
</div>

