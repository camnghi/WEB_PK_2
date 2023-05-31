<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
	
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giỏ hàng</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <table class="table">
                            <tr>
                                <th></th>
                                <th>SẢN PHẨM</th>
                                <th>GIÁ</th>
                                <th>SỐ LƯỢNG</th>
                                <th>TỔNG TIỀN</th>
                                <th></th>
                            </tr>
                            <tr>
                                <td><img src="/sanpham/DL05.jpg" alt="" width="50px"></td>
                                <td>CABALLO</td>
                                <td>50</td>
                                <td>2</td>
                                <td>100</td>
                                <td>
                                    <a href="">Xóa</a>
                                </td>
                            </tr>
                            <tr>
                                <td><img src="/sanpham/DL01a2min.jpg" alt="" width="50px"></td>
                                <td>OXVA</td>
                                <td>50</td>
                                <td>1</td>
                                <td>50</td>
                                <td>
                                    <a href="">Xóa</a>
                                </td>
                            </tr>
                        </table>
                        <button class="btn btn-outline-light bg-secondary" style="float: right;">Cập nhật giỏ hàng</button>
                        <button class="btn btn-outline-light bg-secondary" style=" float: right;">Tiếp tục xem sản phẩm</button>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <table class="table">
                            <tr>
                                <th>TỔNG SẢN PHẨM</th>
                                <th></th>
                            </tr>
                            <tr>
                                <td>Tổng tiền</td>
                                <th>150</th>
                            </tr>
                        </table>
                        <a class="btn btn-outline-light bg-warning" style=" float: right;" href="/dathang/form">Tiếp
                            tục</a>
                            
                            <!-- ${pageContext.request.contextPath} -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
</body>

</html>