<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<form action="">
	<div class="alert alert-primary" role="alert">
		<h4 class="card-title">QUẢN LÝ THỐNG KÊ</h4>
		<ul class="nav nav-tabs" id="myTab" role="tablist">
			<li class="nav-item" role="presentation">
				<button class="nav-link active" id="home-tab" data-bs-toggle="tab"
					data-bs-target="#home-tab-pane" type="button" role="tab"
					aria-controls="home-tab-pane" aria-selected="true">Top sản
					phẩm bán</button>
			</li>
			<li class="nav-item" role="presentation">
				<button class="nav-link" id="profile-tab" data-bs-toggle="tab"
					data-bs-target="#profile-tab-pane" type="button" role="tab"
					aria-controls="profile-tab-pane" aria-selected="false">Doanh
					thu</button>
			</li>
		</ul>
		<div class="tab-content" id="myTabContent">
			<div class="tab-pane fade show active" id="home-tab-pane"
				role="tabpanel" aria-labelledby="home-tab" tabindex="0">
				<div class="table-responsive">
					<table class="table table-light">
						<thead>
							<tr>
								<th scope="col">Mã sản phẩm</th>
								<th scope="col">Tên sản phẩm</th>
								<th scope="col">Số lượng đã bán</th>
							</tr>
						</thead>
						<tbody>
							<tr class>
								<td scope="row">0</td>
								<td>DL01 quạt tản nhiệt</td>
								<td>57</td>
							</tr>
							<tr class>
								<td scope="row">1</td>
								<td>DL02 quạt tản nhiệt</td>
								<td>48</td>
							</tr>
							<tr class>
								<td scope="row">1</td>
								<td>DL03 quạt tản nhiệt</td>
								<td>32</td>
							</tr>
							<tr class>
								<td scope="row">1</td>
								<td>DL04 quạt tản nhiệt</td>
								<td>26</td>
							</tr>
						</tbody>
					</table>
					<a name id class="btn btn-info btn-sm" href="#" role="button">Tăng
						dần</a> <a name id class="btn btn-danger btn-sm" href="#"
						role="button">Giảm dần</a>
				</div>

			</div>
			<div class="tab-pane fade" id="profile-tab-pane" role="tabpanel"
				aria-labelledby="profile-tab" tabindex="0">

				<div class="table-responsive">
					<table class="table table-light">
						<thead>
							<tr>
								<th scope="col">Mã sản phẩm</th>
								<th scope="col">Tên sản phẩm</th>
								<th scope="col">Số đơn hàng</th>
								<th scope="col">Tổng tiền(VNĐ)</th>
							</tr>
						</thead>
						<tbody>
							<tr class>
								<td scope="row">0</td>
								<td>DL01 quạt tản nhiệt</td>
								<td>57</td>
								<td>11.400.000</td>
							</tr>
							<tr class>
								<td scope="row">1</td>
								<td>DL02 quạt tản nhiệt</td>
								<td>48</td>
								<td>7.200.000</td>
							</tr>
							<tr class>
								<td scope="row">2</td>
								<td>DL03 quạt tản nhiệt</td>
								<td>32</td>
								<td>5.760.000</td>
							</tr>
							<tr class>
								<td scope="row">3</td>
								<td>DL04 quạt tản nhiệt</td>
								<td>26</td>
								<td>2.860.000</td>
							</tr>
						</tbody>
					</table>
					<div class="show-action">
						<input name id class="btn btn-light" type="date" value="Button">
						<a name id class="btn btn-light" href="#" role="button">Tìm
							kiếm</a> <label for> Tổng doanh thu: 27.220.000 VNĐ </label>
					</div>
				</div>
			</div>
		</div>
</form>
