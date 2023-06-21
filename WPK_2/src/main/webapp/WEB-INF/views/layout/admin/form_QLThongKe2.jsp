<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
          <!--   <form> -->
                <div class="alert alert-primary" role="alert">
                    <h4 class="card-title">Doanh thu theo thời gian </h4>
                    <br>
                    <div class="card">
                                <div class="card-header">
                                 Doanh thu theo ngày
                                </div>
                                <div class="alert alert-danger mt-3" role="alert" style="color:red" ${empty errorMessageNgay ? 'hidden' : ''} >
				   			 ${errorMessageNgay}
						</div>  
                                 <form class="show-action" action="${pageContext.request.contextPath}/thongke/doanhthu-ngay" method="post">
                                        <input class="btn btn-light" type="date" name="ngayThongKe">
                                       <button type="submit" class="btn btn-primary">Tìm kiếm</button> 
                                        <label for> Tổng doanh thu của ngày ${ngayThongKe}: ${tongDoanhThuNgay} </label>
                                    </form>
                              </div>
                     <br>
                     <div class="card">
                                <div class="card-header">
                                 Doanh thu theo tháng
                                </div>
                               
                                    <form class="show-action" action="${pageContext.request.contextPath}/thongke/doanhthu-thang" method="post">
                                        <input class="btn btn-light" type="month" name="thangThongKe">
                                       <button type="submit" class="btn btn-primary">Tìm kiếm</button> 
                                        <label for> Tổng doanh thu của tháng ${thangThongKe}: ${tongDoanhThu} </label>
                                    </form>
                               
                              </div>
                    <br>
                               <div class="card">
                                <div class="card-header">
                                 Doanh thu theo Quý
                                </div>
                               
                                    <form class="show-action" action="${pageContext.request.contextPath}/thongke/doanhthu-quy" method="post">
                                        <label for="quyThongKe">Chọn quý:</label>
                                            <select class="form-select" name="quyThongKe">
                                                <option value="1">Quý 1</option>
                                                <option value="2">Quý 2</option>
                                                <option value="3">Quý 3</option>
                                                <option value="4">Quý 4</option>
                                            </select>
                                            <label for="namThongKe">Chọn năm:</label>
                                            <select class="form-select" name="namThongKe">
                                                <option value="2021">2021</option>
                                                <option value="2022">2022</option>
                                                <option value="2022">2023</option>
                                                <!-- Thêm các năm khác nếu cần -->
                                            </select>
                                            <br>
                                       <button type="submit" class="btn btn-primary" style="ma">Tìm kiếm</button> 
                                        <label for> Tổng doanh thu của ${quyThongKe} ${namThongKe}: ${tongDoanhThuQuy} </label>
                                    </form>
                              
                              </div>
           <!--  </form> -->
