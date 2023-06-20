<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sản phẩm</title>
</head>
<body>
    <h1>Danh sách sản phẩm</h1>
    
    <table>
        <tr>
            <th>Tên sản phẩm</th>
            <th>Giá</th>
            <th></th>
        </tr>
        <c:forEach var="sanpham" items="${sanphams}">
            <tr>
                <td>${sanpham.ten_sp}</td>
                <td>${sanpham.gia_sp}</td>
                <td>
                    <form method="post" action="/sanphams/giohang">
                        <input type="hidden" name="sanpham_id" value="${sanpham.ten_sp}">
                        <input type="number" name="so_luong" value="1" min="1">
                        <button type="submit">Thêm vào giỏ hàng</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
    
</body>
</html>