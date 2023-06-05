<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/nav.css">
<link rel="stylesheet" href="/css/footer.css">
<link rel="stylesheet" href="/css/sanpham.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">

</head>
<body>
	<%--Đây là NAV--%>
	<%@include file="layout/user/nav.jsp"%>
	<%--Đây là NAV --%>

	<%--Đây là article--%>
	<jsp:include page="layout/user/items.jsp"></jsp:include>
	<%--Đây là article--%>

	<%--Đây là footer--%>
	<%@include file="layout/user/footer.jsp"%>
	<%--Đây là footer--%>
	
	<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <script>
        $(document).ready(function () {
            $('.sub-menu').parent('li').addClass('has-child')
        });
    </script>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
	
</body>
</html>