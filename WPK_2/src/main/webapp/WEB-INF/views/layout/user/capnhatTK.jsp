<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/DangNhap.css">

    <section class="vh-100">
        <div class="container-fluid h-custom">
          <div class="row d-flex justify-content-center align-items-center h-100">
            <!-- Logo -->
            <div class="col-md-9 col-lg-6 col-xl-5">
              <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
                class="img-fluid" alt="Sample image">
            </div>
            <!--Form Cập nhật -->
            <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
              <form action="/index/Update" method="post">        
                <div class="divider d-flex align-items-center my-4">
                  <p class="text-center fw-bold mx-3 mb-0">Cập nhật tài khoản</p>
                </div>
      			<div style="margin: 0 auto;">${message}</div>
                <div class="col-sm-12">
                    <div class="input-group mb-2">
                        <span class="input-group-text bg-white " id="basic-addon1"><i class="fa-sharp fa-solid fa-user fa-2xl"></i></span>
                        <input style="height: 45px;" class="form-control" name="taiKhoan"  value="${taiKhoan}" readonly required>                   
                    </div>          
                 </div>

                 <div class="col-sm-12">
                    <div class="input-group mb-2">
                        <span class="input-group-text bg-white " id="basic-addon1"><i class="fa-sharp fa-solid fa-file-signature fa-xl"></i></span>
                        <input class="form-control" name="hoTen"  placeholder="Họ tên" value="${hoTen}" style="height: 45px;">                   
                    </div>          
                 </div>                                         
                  
                 <div class="col-sm-12">
                    <div class="input-group mb-2">
                        <span class="input-group-text bg-white " id="basic-addon1"><i class="fa-sharp fa-solid fa-envelope fa-2xl"></i></span>
                        <input type="email" class="form-control" value="${email}" name="email"  placeholder="Email" style="height: 45px;"required>                   
                    </div>          
                 </div>
                 
                <div class="text-center text-lg-start mt-2 pt-2">
                  <button type="submit" class="btn btn-primary btn-lg"
                    style="padding-left: 2.5rem; padding-right: 2.5rem;">Cập nhật</button>
                </div>
      
              </form>
            </div>
          </div>
        </div>
      </section>