<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

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
