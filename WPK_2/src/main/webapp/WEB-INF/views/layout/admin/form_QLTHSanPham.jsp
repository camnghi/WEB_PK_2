<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="alert alert-primary" role="alert">
	<h4 class="card-title">THƯƠNG HIỆU</h4>
	<div class="card">
		<form:form action="/quanLyThuongHieu/form?keyword=${keywords}"
			modelAttribute="thuonghieu" method="POST">
			<div class="card-body">
				<!-- Id thuong hieu -->
				<div class="row">
					<form:input path="idTh" placeholder="Id" hidden="hidden" />
					<!-- Tên thuong hieu -->
					<div class="col-sm-6 col-md-6 col-lg-6">
						<span>Tên thương hiệu</span> <br>
						<form:input path="tenTh" placeholder="Tên thương hiệu" />
					</div>
					<!-- Button -->
					<div class="col-sm-6 col-md-6 col-lg-6">
						<span>Chức năng</span> <br>
						<button formaction="/quanLyThuongHieu/create">Thêm</button>
						<button formaction="/quanLyThuongHieu/update">Cập nhật</button>
						<button formaction="/quanLyThuongHieu/form">Mới</button>

					</div>
				</div>
				<!-- tìm kiếm -->
				<hr>
				<div class="timkiem">
					<input name="keywords" value="${keywords}">
					<button>Tìm</button>
				</div>
			</div>
		</form:form>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th scope="col">ID Thương hiệu</th>
							<th scope="col">Tên thương hiệu</th>
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

