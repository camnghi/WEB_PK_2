<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<div id="wrapper" style="padding-bottom: 30px;">
	<div id="header">
		<nav class="container">
			<a href="/index/form" id="logo"> <img src="/img/logo.png" alt=""></a>
			<ul id="main-menu">
				<li><a href="/index/form"><i class="fa-solid fa-house fa-bounce"></i>Trang chủ</a></li>
				<li><a href="/listSPs/SearchPage"><i class="fa-solid fa-list-ul"></i>Sản phẩm</a>
					<ul class="sub-menu">
						<c:forEach var="item" items="${loaisanphams}">
							<li><a href="/listSPs/SearchPage">${item.tenLoai}</a></li>
						</c:forEach>
					</ul>
				</li>

				<li><a href="/giohang/form"><i class="fa-solid fa-cart-shopping"></i>Giỏ hàng</a></li>
				<li><a href=""><i class="fas fa-user-circle"></i>Tài khoản</a>
					<ul class="sub-menu">						
						<li><a href="/index/DangNhap">Đăng nhập: ${khachhang.taiKhoan}</a></li>
						<li><a href="/index/DangKi">Đăng ký </a></li>
						<li><a href="/index/doimatkhau">Đổi mật khẩu </a></li>
						<li><a href="/capnhatTK/form">Cập nhật tài khoản</a></li>
						<li><a href="/index/DangXuat">Đăng xuất </a></li>
					</ul></li>
			</ul>
		</nav>
	</div>
</div>
