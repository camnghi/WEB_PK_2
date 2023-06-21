<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Giỏ hàng</title>
</head>
<body>
    <h1>Giỏ hàng</h1>
    
    <table>
        <tr>
            <th>Tên sản phẩm</th>
            <th>Giá</th>
            <th>Số lượng</th>
            <th>Thành tiền</th>
            <th></th>
        </tr>
        <c:forEach var="item" items="${cart}">
            <tr>
                <td>${item.sanpham.ten_sp}</td>
                <td>${item.sanpham.gia_sp}</td>
                <td>${item.so_luong}</td>
                <td>${item.sanpham.gia_sp * item.so_luong}</td>
                <td>
                    <form method="post" action="/sanphams/giohang/${item.id_ctgh}">
                        <input type="hidden" name="_method" value="DELETE">
                        <button type="submit">Xóa</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
    
    <h2>Tổng tiền: ${tong_tien}</h2>
    
    <form method="post" action="/sanphams/giohang/thanhtoan">
        <button type="submit">Thanh toán</button>
    </form>
    
    <form method="post" action="/sanphams/giohang">
        <input type="hidden" name="_method" value="DELETE">
        <button type="submit">Xóa giỏ hàng</button>
    </form>
    
</body>
</html>