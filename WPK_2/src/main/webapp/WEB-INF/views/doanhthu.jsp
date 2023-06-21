<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thống kê doanh thu theo ngày</title>
</head>
<body>
    <h2>Thống kê doanh thu theo ngày</h2>
    <form action="${pageContext.request.contextPath}/thongke/doanhthu-ngay" method="post">
        Nhập ngày cần thống kê: <input type="date" name="ngayThongKe">
        <input type="submit" value="Thống kê">
    </form>
    <c:if test="${not empty tongDoanhThuNgay}">
        <p>Tổng doanh thu của ngày ${ngayThongKe}: ${tongDoanhThuNgay}</p>
    </c:if> 
</body>
</html>