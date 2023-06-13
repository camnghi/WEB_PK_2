<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<article>
	<form action="/listSPs/SearchPage?keyword=${keywords}" method="post">		
		<div class="input-group"  style="width: 300px;">
            <input name="keywords" value="${keywords}" type="search" class="form-control rounded" placeholder="Tìm sản phẩm..." aria-label="Search"aria-describedby="search-addon"  />
            <button class="btn btn-outline-primary">Tìm</button>
    	</div>
	 
		<div id="sp">
			<ul class="products">
				<c:forEach var="item" items="${page.content}">
					<li>
						<div class="product-item">
							<div class="product-top">
								<a href="/index/edit/${item.idSp}" class="product-thumb">
								<img src="/sanphams/${item.anhSp}" alt="">
								</a>
								<!--Mua ngay-->
								<a href="/index/chitietsanpham" class="buy-now">Mua ngay</a>
							</div>
							<div class="product-info">
								<a href="" class="product-cat">${item.tenSp}</a>
								<a href=""class="product-name">${item.thuonghieu.tenTh}</a>
								<a href="" class="product-price">${df.format(item.giaSp)} VNĐ</a>
							</div>
						</div>
					</li>
				</c:forEach>
			</ul>
		</div>
	
		<div id="nutdieuhuong">
			<ul class="pagination pagination-sm">
				<li class="page-item active" aria-current="page">
					<c:forEach var="i" begin="0" end="${page.totalPages - 1 < 0 ? 0 : page.totalPages - 1}">
						<a href="/listSPs/SearchPage?keyword=${keywords}&p=${i}">${i + 1}</a>
					</c:forEach>	
				</li>
			</ul>
		</div>
		
	</form>
</article>