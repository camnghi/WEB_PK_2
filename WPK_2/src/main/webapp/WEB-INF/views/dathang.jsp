<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đặt hàng</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-header">
                        <div class="card-title">
                            <h5>CHI TIẾT ĐƠN HÀNG</h5>
                        </div>
                    </div>
                    <div class="card-body">
                        <form ng-submit="addClent()" name="formAdd">
                            <div class="mb-3">
                                <label for="name" class="form-label">Họ Tên</label>
                                <input type="text" class="form-control" id="name" required placeholder="Nhập họ tên">
                            </div>
                            <div class="mb-3">
                                <label for="phone" class="form-label">Số Điện Thoại:</label>
                                <input type="text" class="form-control" id="phone" placeholder="Nhập số điện thoại">
                            </div>
                            <div class="mb-3">
                                <label for="Address" class="form-label">Địa Chỉ</label>
                                <input type="text" class="form-control" required id="Address"
                                    placeholder="Nhập địa chỉ">
                            </div>
                            <div class="mb-3">
                                <label for="email" class="form-label">Email</label>
                                <input type="text" class="form-control" required id="email" placeholder="Nhập email">
                            </div>
                            <div class="mb-3">
                                <label for="note" class="form-label">Ghi chú</label>
                                <textarea name="note" id="note" cols="80" rows="3" ></textarea>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="card-body">
                    <div class="card">
                        <div class="card-header">
                            <div class="card-title">
                                <h5>ĐƠN HÀNG CỦA BẠN</h5>
                            </div>
                        </div>
                        <div class="card-body">
                            <form action="">
                                <table class="table">
                                    <tr>
                                        <th>SẢN PHẨM</th>
                                        <th>TỔNG TIỀN</th>
                                    </tr>
                                    <tr>
                                        <td>CABALLO x2</td>
                                        <td>100</td>
                                    </tr>
                                    <tr>
                                        <td>OXVA x1</td>
                                        <td>50</td>
                                    </tr>
                                    <tr>
                                        <th>TỔNG TIỀN</th>
                                        <th>150</th>
                                    </tr>
                                </table>
                                <button class="btn btn-outline-light bg-warning" style=" float: right;">Đặt
                                    hàng</button>
                            </form>
                        </div>
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