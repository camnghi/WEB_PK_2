<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
    
<link rel="stylesheet" href="/css/DoiMatKhau.css">

    <section class="vh-100">
        <div class="container-fluid h-custom">
            <div class="row d-flex justify-content-center align-items-center h-100">

                <!--Form đổi mật khẩu -->
                <div class="col-md-12 col-lg-12 col-xl-4 offset-xl-1">
                    <form action="/index/changepass" method="post">
                    
                        <div class="divider d-flex align-items-center my-4">
                            <p class="text-center fw-bold mx-3 mb-0">Đổi mật khẩu</p>
                        </div>                     
                        <div style="margin: 0 auto;">${message}</div>
                        <div class="input-group mb-2">
							  <span class="input-group-text bg-white" id="basic-addon1"><i class="fa-sharp fa-solid fa-user fa-2xl"></i></span>
							  <input name="taiKhoan" class="form-control" style="height: 45px;" value="${taiKhoan}" readonly/>
						</div>                                                                  

                        <div class="col-sm-12">
                            <div class="input-group mb-2">
                                <span class="input-group-text bg-white " id="basic-addon1"><i class="fa-sharp fa-solid fa-lock fa-2xl"></i></span>
                                <input type="password" class="form-control" name="matKhau" placeholder="Mật Khẩu" style="height: 45px;" required>
                            </div>
                        </div>

                        <div class="col-sm-12">
                            <div class="input-group mb-2">
                                <span class="input-group-text bg-white " id="basic-addon1"><i class="fa-sharp fa-solid fa-lock fa-2xl"></i></span>
                                <input type="password" class="form-control" name="matKhauMoi" placeholder="Mật Khẩu mới" style="height: 45px;" required >
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="input-group mb-2">
                                <span class="input-group-text bg-white " id="basic-addon1">
                                	<i class="fa-sharp fa-solid fa-lock fa-2xl"></i>
                                </span>
                                <input type="password" class="form-control" name="XNmatKhauMoi" placeholder="Xác nhận mật khẩu" style="height: 45px;" required>
                            </div>
                        </div>
                        <div class="text-center  mt-2 pt-2">
                            <p class="small fw-bold mt-2 pt-1 mb-0">Không thể đổi mật khẩu? <a href="DangNhap.html" class="link-danger">Lấy lại mật khẩu</a></p>
                            <br>
                            <button type="submit" class="btn btn-primary btn-lg" style="padding-left: 2.5rem; padding-right: 2.5rem;">Đổi Mật Khẩu</button>
                            
                        </div>

                    </form>
                </div>
                
            </div>
        </div>

    </section>
