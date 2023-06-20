<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<article>
    <form action="/listSPs/SearchPage" method="get">		
	    <div class="input-group" style="width: 300px;">
	        <input name="keywords" value="${kwords}" type="search" class="form-control rounded" placeholder="Tìm sản phẩm..." aria-label="Search" aria-describedby="search-addon" />
	        <button class="btn btn-outline-primary">Tìm</button>
	    </div>
	    <input type="hidden" name="loaiSpId" value="${param.loaiSpId}" />
    </form>
    <div class="btn-group" role="group">
    <a href="/listSPs/SearchPage?keywords=${kwords}&p=${page.number}&sort=priceDesc" class="btn btn-outline-primary ${sort == 'priceDesc' ? 'active' : ''}">Giá giảm dần</a>
	<a href="/listSPs/SearchPage?keywords=${kwords}&p=${page.number}&sort=priceAsc" class="btn btn-outline-primary ${sort == 'priceAsc' ? 'active' : ''}">Giá tăng dần</a>
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
                            <a href="" class="product-name">${item.thuonghieu.tenTh}</a>
                            <a href="" class="product-price">${df.format(item.giaSp)} VNĐ</a>
                        </div>
                    </div>
                </li>
            </c:forEach>
        </ul>
    </div>

    <div id="nutdieuhuong">
        <ul class="pagination pagination-sm">
            <c:forEach var="i" begin="0" end="${page.totalPages - 1 < 0 ? 0 : page.totalPages - 1}">
                <li class="page-item ${page.number == i ? 'active' : ''}" aria-current="page">
                    <a class="page-link" href="/listSPs/SearchPage?keywords=${kwords}&p=${i}&loaiSpId=${param.loaiSpId}&sort=${param.sort}">${i + 1}</a>
                </li>
            </c:forEach>
        </ul>
    </div>
</article>