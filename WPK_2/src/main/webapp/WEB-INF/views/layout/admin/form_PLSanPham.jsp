<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<form action>
	<div class="alert alert-primary" role="alert">
		<h4 class="card-title">PHÂN LOẠI</h4>
		<div class="card">
			<div class="card-body">
				<!-- Id loại  -->
				<div class="row">

					<div class="col-sm-6 col-md-6 col-lg-6">
						<span>ID Loại</span> <br> <input
							class="form-control form-control-sm" type="text"
							placeholder="Nhập ID Loại sản phẩm"
							aria-label=".form-control-sm example">
					</div>
					<!-- Tên loại -->
					<div class="col-sm-6 col-md-6 col-lg-6">
						<span>Tên loại</span> <br> <input
							class="form-control form-control-sm" type="text"
							placeholder="Nhập tên loại sản phẩm"
							aria-label=".form-control-sm example">
					</div>
				</div>
				<!-- Button -->
				<div class="col-sm-12 col-md-12 col-lg-12 text-center">
					<a name id class="btn btn-primary" href="#" role="button">Mới</a> <a
						name id class="btn btn-success" href="#" role="button">Thêm</a> <a
						name id class="btn btn-warning" href="#" role="button">Sửa</a>
				</div>
				<!-- tìm kiếm -->
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
								<th scope="col">ID loại</th>
								<th scope="col">Tên loại</th>

								<th></th>
							</tr>
						</thead>
						<tbody>
							<tr class>
								<td scope="row">baotay</td>
								<td>Bao tay</td>

								<td><a name id class="btn btn-info btn-sm" href="#"
									role="button">Edit</a> <a name id class="btn btn-danger btn-sm"
									href="#" role="button">Xóa</a></td>
							</tr>
							<tr class>
								<td scope="row">maychoigamecamtay</td>
								<td>Máy chơi game cầm tay</td>
								<td><a name id class="btn btn-info btn-sm" href="#"
									role="button">Edit</a> <a name id class="btn btn-danger btn-sm"
									href="#" role="button">Xóa</a></td>
							</tr>
							<tr class>
								<td scope="row">taycamchoigame</td>
								<td>Tay cầm chơi game</td>
								<td><a name id class="btn btn-info btn-sm" href="#"
									role="button">Edit</a> <a name id class="btn btn-danger btn-sm"
									href="#" role="button">Xóa</a></td>
							</tr>
							<tr class>
								<td scope="row">taynghe</td>
								<td>Tay nghe</td>
								<td><a name id class="btn btn-info btn-sm" href="#"
									role="button">Edit</a> <a name id class="btn btn-danger btn-sm"
									href="#" role="button">Xóa</a></td>
							</tr>
							<tr class>
								<td scope="row">nutbamchoigame</td>
								<td>Nút bấm chơi game</td>
								<td><a name id class="btn btn-info btn-sm" href="#"
									role="button">Edit</a> <a name id class="btn btn-danger btn-sm"
									href="#" role="button">Xóa</a></td>
							</tr>
							<tr class>
								<td scope="row">chuot</td>
								<td>Chuột</td>
								<td><a name id class="btn btn-info btn-sm" href="#"
									role="button">Edit</a> <a name id class="btn btn-danger btn-sm"
									href="#" role="button">Xóa</a></td>
							</tr>
							<tr class>
								<td scope="row">banphim</td>
								<td>Bàn phím</td>
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
