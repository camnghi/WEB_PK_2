<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <form action="">
                <div class="alert alert-primary" role="alert">
                    <h4 class="card-title">QUẢN LÝ THỐNG KÊ</h4>
                    <br>
                    <div class="row">
                        <div class="col-xl-3 col-sm-6 col-12">
                            <div class="card shadow border-0">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col">
                                            <span class="h6 font-semibold text-muted text-sm d-block mb-2">Tổng doanh thu</span>
                                             <span class="h3 font-bold mb-0 text-md">${tongDoanhThu}</span> 
                                          
                                        </div>
                                        <div class="col-auto">
                                            <div class="icon icon-shape bg-tertiary text-white text-lg rounded-circle">
                                                <!-- <i class="fa-sharp fa-regular fa-credit-card fa-2xl" style="color: #2abb69;"></i> -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-3 col-sm-6 col-12">
                            <div class="card shadow border-0">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col">
                                            <span class="h6 font-semibold text-muted text-sm d-block mb-2">Sản Phẩm Đã Bán</span>
                                            <span class="h3 font-bold mb-0">${soSanPhamDaBan}</span>
                                        </div>
                                        <div class="col-auto">
                                            <div class="icon icon-shape bg-tertiary text-white text-lg rounded-circle">
                                                <!-- <i class="fa-solid fa-gamepad fa-2xl" style="color: #2061cf;"></i> -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-3 col-sm-6 col-12">
                            <div class="card shadow border-0">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col">
                                            <span class="h6 font-semibold text-muted text-sm d-block mb-2">Số đơn hàng</span>
                                            <span class="h3 font-bold mb-0">${soDonHang}</span>
                                        </div>
                                        <div class="col-auto">
                                            <div class="icon icon-shape bg-tertiary text-white text-lg rounded-circle">
                                                <!-- <i class="fa-sharp fa-light fa-credit-card-front" style="color: #4581e8;"></i> -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br>
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="home-tab" data-bs-toggle="tab"
                                data-bs-target="#home-tab-pane" type="button" role="tab"
                                aria-controls="home-tab-pane" aria-selected="true">Top sản
                                phẩm bán</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="profile-tab" data-bs-toggle="tab"
                                data-bs-target="#profile-tab-pane" type="button" role="tab"
                                aria-controls="profile-tab-pane" aria-selected="false">Doanh
                                thu theo loại sản phẩm</button>
                        </li>
                        <!-- <li class="nav-item" role="presentation">
                            <button class="nav-link" id="vinh-tab" data-bs-toggle="tab"
                                data-bs-target="#vinh-tab-pane" type="button" role="tab"
                                aria-controls="vinh-tab-pane" aria-selected="false">Tùy Chọn</button>
                        </li> -->
                    </ul>
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="home-tab-pane"
                            role="tabpanel" aria-labelledby="home-tab" tabindex="0">
                            <div class="table-responsive">
                                <table class="table table-light">
                                    <thead>
                                        <tr>
                                            <th scope="col">Tên sản phẩm</th>
                                            <th scope="col">Tổng số lượng đã bán</th>
                                            <th scope="col">Tổng giá trị sản phẩm</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                         <c:forEach items="${sanPhamBanChayNhat}" var="sanPham">
								            <tr>
								                <td>${sanPham[0].tenSp}</td>
								                <td>${sanPham[1]}</td>
								                <td>${sanPham[2]}</td>
								            </tr>
								        </c:forEach>
                                    </tbody>
                                </table>
                                <a name id class="btn btn-info btn-sm" href="#" role="button">Tăng
                                    dần</a> <a name id class="btn btn-danger btn-sm" href="#"
                                    role="button">Giảm dần</a>
                            </div>
            
                        </div>

                        <div class="tab-pane fade" id="profile-tab-pane" role="tabpanel"
                            aria-labelledby="profile-tab" tabindex="0">
            
                            <div class="table-responsive">
                                <table class="table table-light">
                                    <thead>
                                        <tr>
                                            <th scope="col">Loại Sản Phẩm</th>
                                            <th scope="col">Tổng Doanh Thu</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                         <c:forEach items="${doanhThuTheoLoai}" var="doanhThu">
							                <tr>
							                    <td>${doanhThu[0]}</td>
							                    <td>${doanhThu[1]}</td>
							                </tr>
							            </c:forEach>
                                    </tbody>
                                </table>
                               
                            </div>
                        </div>

                        
            </form>
