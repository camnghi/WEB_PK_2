<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<form action>
	<div class="alert alert-primary" role="alert">
		<h4 class="card-title">CHI TIẾT SẢN PHẨM</h4>
		<div class="card">
			<div class="card-body">
				<!-- Id chi tiết sản phẩm  -->
				<div class="row">

					<div class="col-sm-6 col-md-6 col-lg-6">
						<span>ID CT sản </span> <br> <input
							class="form-control form-control-sm" type="text"
							placeholder="Nhập ID chi tiết sản phẩm"
							aria-label=".form-control-sm example">
					</div>
					<!-- Tên sản phẩm -->
					<div class="col-sm-6 col-md-6 col-lg-6">
						<span>Tên sản phẩm</span> <br> <input
							class="form-control form-control-sm" type="text"
							placeholder="Nhập tên sản phẩm"
							aria-label=".form-control-sm example">
					</div>

					<!-- Bảo hành -->
					<div class="col-sm-6 col-md-6 col-lg-6">
						<div class="mb-3">
							<span>Bảo hành</span> <select class="form-select form-select-sm"
								name="" id="">
								<option selected>Vui lòng chọn</option>
								<option selected>Có bảo hành</option>
								<option value="">Không bảo hành</option>
							</select>
						</div>
					</div>

					<!-- Thương hiệu -->
					<div class="col-sm-6 col-md-6 col-lg-6">
						<span>Thương hiệu</span> <br> <input
							class="form-control form-control-sm" type="text"
							placeholder="Nhập thương hiệu"
							aria-label=".form-control-sm example">
					</div>

					<div class="col-sm-6 col-md-6 col-lg-6">
						<span>Nguồn gốc</span> <br> <input
							class="form-control form-control-sm" type="text"
							placeholder="Nhập tên sản phẩm"
							aria-label=".form-control-sm example">
					</div>

					<!-- Button -->
					<div class="col-sm-6 col-md-6 col-lg-6 text-center">
						<a name id class="btn btn-primary" href="#" role="button">Mới</a>
						<a name id class="btn btn-success" href="#" role="button">Thêm</a>
						<a name id class="btn btn-warning" href="#" role="button">Sửa</a>
					</div>

				</div>
				<!-- Tìm kiếm -->
				<hr>
				<div class="timkiem">
					<input type="text" class="form-control-sm"
						aria-label=".form-control-sm example"
						placeholder="Nhập tên tìm kiếm"> <a name="" id=""
						class="btn btn-secondary btn-sm" href="#" role="button">Tìm
						kiếm</a>
				</div>

			</div>

			<div class="card-body">
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th scope="col">ID CT Sản phẩm</th>
								<th scope="col">Tên sản phẩm</th>
								<th scope="col">Bảo hành</th>
								<th scope="col">Thương hiệu</th>
								<th scope="col">Xuất sứ</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<tr class>
								<td scope="row">0</td>
								<td>DL01 quạt tản nhiệt</td>
								<td>Có bảo hành</td>
								<td>Player for people</td>
								<td>Trung Quốc</td>
								<td><a name id class="btn btn-info btn-sm" href="#"
									role="button">Edit</a> <a name id class="btn btn-danger btn-sm"
									href="#" role="button">Xóa</a></td>
							</tr>
							<tr class>
								<td scope="row">1</td>
								<td>DL01 quạt tản nhiệt</td>
								<td>Có bảo hành</td>
								<td>Player for people</td>
								<td>Trung Quốc</td>
								<td><a name id class="btn btn-info btn-sm" href="#"
									role="button">Edit</a> <a name id class="btn btn-danger btn-sm"
									href="#" role="button">Xóa</a></td>
							</tr>
							<tr class>
								<td scope="row">2</td>
								<td>DL01 quạt tản nhiệt</td>
								<td>Không bảo hành</td>
								<td>Player for people</td>
								<td>Trung Quốc</td>
								<td><a name id class="btn btn-info btn-sm" href="#"
									role="button">Edit</a> <a name id class="btn btn-danger btn-sm"
									href="#" role="button">Xóa</a></td>
							</tr>
							<tr class>
								<td scope="row">3</td>
								<td>DL01 quạt tản nhiệt</td>
								<td>Có bảo hành</td>
								<td>Player for people</td>
								<td>Trung Quốc</td>
								<td><a name id class="btn btn-info btn-sm" href="#"
									role="button">Edit</a> <a name id class="btn btn-danger btn-sm"
									href="#" role="button">Xóa</a></td>
							</tr>
							<tr class>
								<td scope="row">4</td>
								<td>DL01 quạt tản nhiệt</td>
								<td>Không bảo hành</td>
								<td>Player for people</td>
								<td>Trung Quốc</td>
								<td><a name id class="btn btn-info btn-sm" href="#"
									role="button">Edit</a> <a name id class="btn btn-danger btn-sm"
									href="#" role="button">Xóa</a></td>
							</tr>
							<tr class>
								<td scope="row">5</td>
								<td>DL01 quạt tản nhiệt</td>
								<td>Có bảo hành</td>
								<td>Player for people</td>
								<td>Trung Quốc</td>
								<td><a name id class="btn btn-info btn-sm" href="#"
									role="button">Edit</a> <a name id class="btn btn-danger btn-sm"
									href="#" role="button">Xóa</a></td>
							</tr>
						</tbody>
					</table>
				</div>

			</div>
		</div>

	</div>
</form>
