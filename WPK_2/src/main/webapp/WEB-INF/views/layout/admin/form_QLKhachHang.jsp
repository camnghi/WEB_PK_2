<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<span class="title">BẢNG THÔNG TIN KHÁCH HÀNG</span>
<hr>
<form action>
	<div class="card-body">
		<!-- tìm kiếm -->

		<div class="timkiem">
			<input type="text" class="form-control-sm"
				aria-label=".form-control-sm example"
				placeholder="Nhập tên tìm kiếm"> <a name="" id=""
				class="btn btn-secondary btn-sm" href="#" role="button">Tìm kiếm</a>
		</div>

		<div class="table-responsive">

			<table class="table">
				<thead>
					<tr>
						<th scope="col">ID khách hàng</th>
						<th scope="col">Tên khách hàng</th>
						<th scope="col">Địa chỉ</th>
						<th scope="col">Số điện thoại</th>
						<th scope="col">Email</th>
						<th scope="col">Tài khoản</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<tr class>
						<td>0</td>
						<td>Nguyễn Văn A</td>
						<td>Vàm xáng, phú mỹ, phú tân, cà mau</td>
						<td>0919888271</td>
						<td>nguyenvanaa@gmail.com</td>
						<td>vanaaa1997</td>
					</tr>
					<tr class>
						<td>1</td>
						<td>Trần Thị B</td>
						<td>Cái răng, cần thơ</td>
						<td>0898827272</td>
						<td>tranthibbb@gmail.com</td>
						<td>binhhh1998</td>
						<td></td>
					</tr>
					
				</tbody>
			</table>
		</div>
	</div>
</form>
