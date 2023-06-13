<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


<div class="container">
	<div id="carouselExampleCaptions" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="/img/banner1.jpg" class="d-block w-100" alt="...">
				<div class="carousel-caption d-none d-md-block">
					<h5>Ngon bổ rẻ</h5>
					<p>Uy tín đặt lên hàng đầu.</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="/img/banner2.jpg" class="d-block w-100" alt="...">
				<div class="carousel-caption d-none d-md-block">
					<h5>Khách hàng là thượng đế</h5>
					<p>Mua đổi trả trong tích tắt.</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="/img/banner3.png" class="d-block w-100" alt="...">
				<div class="carousel-caption d-none d-md-block">
					<h5>Hàng chính hãng</h5>
					<p>Nói không với hàng fake.</p>
				</div>
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>
</div>



<article>
	<div id="sp">
		<div class="headline">
			<h4>Sản phẩm bán chạy</h4>
		</div>
		<ul class="products">
			<c:forEach var="item" items="${items}">
				<li>
					<div class="product-item">
						<div class="product-top">
							<a href="/index/edit/${item.idSp }" class="product-thumb"> <img
								src="/sanphams/${item.anhSp}" alt="">
							</a>
							<!--Mua ngay-->
							<a href="/index/chitietsanpham" class="buy-now">Mua ngay</a>
						</div>
						<div class="product-info">
							<a href="" class="product-cat">${item.tenSp}</a> <a href=""
								class="product-name">${item.thuonghieu.tenTh }</a> <a href=""
								class="product-price">${item.giaSp }</a>
						</div>
					</div>
				</li>
			</c:forEach>



			<div class="container">
				<div id="sanphambanchay">Tai nghe bluetooth</div>
				<div id="hinhbanner">
					<img src="/img/banner1.jpg" alt="">
				</div>
			</div>


			<li>
				<div class="product-item">
					<div class="product-top">
						<a href="" class="product-thumb"> <img
							src="/sanpham/DL01a4min.jpg" alt="">
						</a>
						<!--Mua ngay-->
						<a href="" class="buy-now">Mua ngay</a>
					</div>
					<div class="product-info">
						<a href="" class="product-cat">Quạt tản nhiệt</a> <a href=""
							class="product-name">Sonic</a> <a href="" class="product-price">1000$</a>
					</div>
				</div>
			</li>



		</ul>
	<%-- 	<c:forEach var="i" begin="0" end="${page.totalPages-1 }">
			<a href="/product/page?p=${i}">${i+1}</a>
		</c:forEach> --%>
	</div>
<%-- 	<div id="nutdieuhuong">
		<ul class="pagination pagination-sm">
			<li class="page-item active text-light" aria-current="page"><span
				class="page-link"><c:forEach var="i" begin="0" end="${page.totalPages-1 }">
			<a href="/product/page?p=${i}">${i+1}</a>
		</c:forEach></span></li>
			
		</ul>
	</div> --%>
</article>