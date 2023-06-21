<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


<div class="alert alert-primary" role="alert">
	<h4 class="card-title">QUẢN LÝ SẢN PHẨM</h4>
	<div class="card">
		<div class="card-body">
			<form:form action="/quanLySanPham/form" modelAttribute="sanpham"
				method="POST" enctype="multipart/form-data">
				<div class="row">
					<form:input path="idSp" placeholder="Id sản phẩm" hidden="hidden" />
					<br>
					<!-- Hình ảnh -->

					<div class="col-sm-4 col-md-4 col-lg-4">
						<span>Ảnh sản phẩm</span>
						<div class="card border-default text-center" id="card-img">
							<img class="card-img-top" src="/images/${sanpham.anhSp}" alt="">
						</div>
						<input type="file" name="photo_file">
					</div>
					<%-- 					<form:errors path="anhSp" cssClass="mgs_errors"></form:errors> --%>
					<div class="col-sm-8 col-md-8 col-lg-8">
						<div class="row">
							<!-- Tên sản phẩm -->
							<div class="col-sm-6 col-md-6 col-lg-6">
								<span>Tên sản phẩm</span> <br>
								<form:input path="tenSp" placeholder="Tên sản phẩm"
									class="form-control form-control-sm" />
								<br>
								<form:errors path="tenSp" cssClass="mgs_errors"></form:errors>
							</div>
							<!-- Giá sản phẩm -->
							<div class="col-sm-6 col-md-6 col-lg-6">
								<span>Giá</span> <br>
								<form:input path="giaSp" placeholder="Giá sản phẩm"
									class="form-control form-control-sm" />
								<br>

							</div>
							<!-- Loại sản phẩm-->
							<div class="col-sm-6 col-md-6 col-lg-6">
								<div class="mb-3">
									<span>Loại</span>
									<form:select path="loaisanpham.idLoai"
										class="form-select form-select-sm">
										<form:option value="">Chọn loại sản phẩm</form:option>
										<form:options items="${list_loaisanpham}" />
									</form:select>
								</div>
							</div>
							<!-- Nhập số lượng -->
							<div class="col-sm-6 col-md-6 col-lg-6">
								<span>Số lượng</span> <br>
								<form:input path="soLuong" placeholder="Số lượng(>=1)"
									class="form-control form-control-sm" />
								<br>
								<!--  Chọn thương hiệu -->
							</div>
							<div class="row">
								<div class="col-sm-6 col-md-6 col-lg-6">
									<div class="mb-3">
										<span>Thương hiệu</span>
										<form:select path="thuonghieu.idTh"
											class="form-select form-select-sm" name="" id="">
											<form:option value="">Chọn thương hiệu</form:option>
											<form:options items="${list_thuonghieu}" />
										</form:select>
									</div>
								</div>
								<!-- Bảo hành -->

								<div class="col-sm-6 col-md-6 col-lg-6">
									<span>Bảo hành</span> <br>
									<%-- 										<form:radiobuttons path="bao_hanh" items="${list_yesno}"/>  --%>
									Có bảo hành
									<form:radiobutton path="baoHanh" value="true" />
									&nbsp&nbsp Không bảo hành
									<form:radiobutton path="baoHanh" value="false" />
								</div>
							</div>
							<!-- Mô tả sản phẩm -->
							<div class="col-sm-12 col-md-12 col-lg-12">
								<span>Mô tả</span> <br>
								<form:textarea path="moTa" placeholder="Mô tả"
									class="form-control form-control-sm" />
								<br>
							</div>
							<!-- Button -->
							<div class="col-sm-12 col-md-12 col-lg-12 text-center">
								<button class="btn btn-primary" formaction="/quanLySanPham/form"
									role="button">Mới</button>
								<button type="submit" class="btn btn-success"
									formaction="/quanLySanPham/create" role="button">Thêm</button>
								<button type="submit" class="btn btn-warning"
									formaction="/quanLySanPham/update" role="button">Sửa</button>
							</div>
						</div>
					</div>
				</div>
				<!-- tìm kiếm -->
				<div class="timkiem">
					<input name="keywords" value="">
					<button>Tìm kiếm</button>
				</div>
			</form:form>

		</div>

		<div class="card-body">
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th scope="col"><a href="/quanLySanPham/form?field=idSp" style="color:red; text-decoration: none;">Id SP</a></th>
							<th scope="col"><a href="/quanLySanPham/form?field=tenSp" style="color:red; text-decoration: none;">Tên SP</a></th>
							<th scope="col"><a href="/quanLySanPham/form?field=giaSp" style="color:red; text-decoration: none;">Giá</a></th>
							<th scope="col">Hình ảnh</th>
							<th scope="col"><a href="/quanLySanPham/form?field=soLuong" style="color:red; text-decoration: none;">Số lượng</a></th>
							<th scope="col">Loại</a></th>
							<th scope="col">Bảo Hành</th>
							<th scope="col">Thương hiệu</th>
							<th scope="col">Mô tả</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="sanPham" items="${page.content}">
							<tr>
								<td scope="row">${sanPham.idSp}</td>
								<td>${sanPham.tenSp}</td>
								<td>${sanPham.giaSp}</td>
								<td style="width: 40px; height: 40px;"><img
									src="/images/${sanPham.anhSp}"
									style="width: 40px; height: 40px;" /></td>
								<td>${sanPham.soLuong}</td>
								<td>${sanPham.loaisanpham.tenLoai}</td>
								<td>${sanPham.baoHanh}</td>
								<td>${sanPham.thuonghieu.tenTh}</td>
								<td>${sanPham.moTa}</td>
								<td><a href="/quanLySanPham/edit/${sanPham.idSp}"
									class="btn btn-success btn-sm">Edit</a> <a
									class="btn btn-danger btn-sm"
									href="/quanLySanPham/delete/${sanPham.idSp}" role="button">Xóa</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<c:forEach var="i" begin="0"
					end="${page.totalPages - 1 < 0 ? 0 : page.totalPages - 1}">
					<a href="/quanLySanPham/form?keyword=${keywords}&p=${i}">${i + 1}</a>
				</c:forEach>
			</div>
		</div>

	</div>
</div>
