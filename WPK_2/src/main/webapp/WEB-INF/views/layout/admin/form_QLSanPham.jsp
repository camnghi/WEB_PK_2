<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<form action="">
	<div class="alert alert-primary" role="alert">
		<h4 class="card-title">QUẢN LÝ SẢN PHẨM</h4>
		<div class="card">
			<div class="card-body">
				<div class="row">
					<!-- Hình ảnh -->
					<div class="col-sm-4 col-md-4 col-lg-4">
						<span>Ảnh sản phẩm</span>
						<div class="card border-default text-center" id="card-img">
							<img class="card-img-top" src="holder.js/100px180/" alt="">
						</div>
						<input type="file" class="choose-file" name id>
					</div>
					<div class="col-sm-8 col-md-8 col-lg-8">
						<div class="row">
							<!-- Tên sản phẩm -->
							<div class="col-sm-6 col-md-6 col-lg-6">
								<span>Tên sản phẩm</span> <br> <input
									class="form-control form-control-sm" type="text"
									placeholder="Nhập tên sản phẩm"
									aria-label=".form-control-sm example">
							</div>
							<!-- Giá sản phẩm -->
							<div class="col-sm-6 col-md-6 col-lg-6">
								<span>Giá</span> <br> <input
									class="form-control form-control-sm" type="number"
									placeholder="Nhập giá sản phẩm"
									aria-label=".form-control-sm example">
							</div>
							<!-- Loại sản phẩm-->
							<div class="col-sm-6 col-md-6 col-lg-6">
								<div class="mb-3">
									<span>Loại</span> <select class="form-select form-select-sm"
										name="" id="">
										<option selected>Vui lòng chọn</option>
										<option value="">Bao tay</option>
										<option value="">Máy cầm chơi game</option>
										<option value="">Tay cầm chơi game</option>
										<option value="">Tay nghe</option>
										<option value="">Nút bấm chơi game</option>
										<option value="">Chuột</option>
										<option value="">Bàn phím</option>
									</select>
								</div>
							</div>
							<!-- Nhập số lượng -->
							<div class="col-sm-6 col-md-6 col-lg-6">
								<span>Số lượng</span> <br> <input
									class="form-control form-control-sm" type="number"
									placeholder="Số lượng sản phẩm"
									aria-label=".form-control-sm example">
							</div>
							<!-- Mô tả sản phẩm -->
							<div class="col-sm-12 col-md-12 col-lg-12">
								<span>Mô tả</span> <br>
								<textarea class="form-control" name id rows="3"
									placeholder="Nhập mô tả sản phẩm"></textarea>
							</div>
							<!-- Button -->
							<div class="col-sm-12 col-md-12 col-lg-12 text-center">
								<a name="" id="" class="btn btn-primary" href="#" role="button">Mới</a>
								<a name="" id="" class="btn btn-success" href="#" role="button">Thêm</a>
								<a name="" id="" class="btn btn-warning" href="#" role="button">Sửa</a>

							</div>

						</div>
					</div>
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
								<th scope="col">ID Sản phẩm</th>
								<th scope="col">Tên sản phẩm</th>
								<th scope="col">Giá</th>
								<th scope="col">Số lượng</th>
								<th scope="col">Loại</th>
								<th scope="col">Mô tả</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<tr class="">
								<td scope="row">0</td>
								<td>DL01 quạt tản nhiệt</td>
								<td>200.000</td>
								<td>75</td>
								<td>Tay cầm chơi game</td>
								<td>Giúp hạ nhiệt điện thoại, giảm lag...</td>
								<td><a name="" id="" class="btn btn-info btn-sm" href="#"
									role="button">Edit</a> <a name="" id=""
									class="btn btn-danger btn-sm" href="#" role="button">Xóa</a></td>
							</tr>
							<tr class="">
								<td scope="row">1</td>
								<td>DL02 quạt tản nhiệt</td>
								<td>150.000</td>
								<td>80</td>
								<td>Bao tay</td>
								<td>Giúp hạ nhiệt điện thoại, giảm lag...</td>
								<td><a name id class="btn btn-info btn-sm" href="#"
									role="button">Edit</a> <a name id class="btn btn-danger btn-sm"
									href="#" role="button">Xóa</a></td>
							</tr>
							<tr class="">
								<td scope="row">2</td>
								<td>DL03 quạt tản nhiệt</td>
								<td>180.000</td>
								<td>90</td>
								<td>Tay cầm chơi game</td>
								<td>Giúp hạ nhiệt điện thoại, giảm lag...</td>
								<td><a name id class="btn btn-info btn-sm" href="#"
									role="button">Edit</a> <a name id class="btn btn-danger btn-sm"
									href="#" role="button">Xóa</a></td>
							</tr>
							<tr class="">
								<td scope="row">3</td>
								<td>DL04 quạt tản nhiệt</td>
								<td>110.000</td>
								<td>70</td>
								<td>Quạt tản nhiệt</td>
								<td>Giúp hạ nhiệt điện thoại, giảm lag...</td>
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
