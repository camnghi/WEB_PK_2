<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
  <h2>Đăng nhập</h2>
  <form action="/sanphams/login" method="post">
    <div class="form-group">
      <label for="taiKhoan">Tài khoản:</label>
      <input type="text" class="form-control" id="taiKhoan" placeholder="Nhập tài khoản" name="taiKhoan">
    </div>
    <button type="submit" class="btn btn-primary">Đăng nhập</button>
  </form>
</div>
</body>
</html>