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
            <!--Form Dang ki -->
            <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
              <form>        
                <div class="divider d-flex align-items-center my-4">
                  <p class="text-center fw-bold mx-3 mb-0">Cập nhật tài khoản</p>
                </div>
      
                <div class="col-sm-12">
                    <div class="input-group mb-2">
                        <span class="input-group-text bg-white " id="basic-addon1"><i class="fa-sharp fa-solid fa-user fa-2xl"></i></span>
                        <input type="text" class="form-control" name="id"  placeholder="Tài Khoản" style="height: 45px;"
                             required>                   
                    </div>          
                 </div>

                 <div class="col-sm-12">
                    <div class="input-group mb-2">
                        <span class="input-group-text bg-white " id="basic-addon1"><i class="fa-sharp fa-solid fa-file-signature fa-xl"></i></span>
                        <input type="text" class="form-control" name="id"  placeholder="Họ tên" style="height: 45px;"
                             required>                   
                    </div>          
                 </div>

                 <div class="col-sm-12">
                    <div class="input-group mb-2">
                        <span class="input-group-text bg-white " id="basic-addon1"><i class="fa-solid fa-location-dot fa-2xl"></i></span>
                        <input type="text" class="form-control" name="id"  placeholder="Địa chỉ" style="height: 45px;"
                             required>                   
                    </div>          
                 </div>

                 <div class="col-sm-12">
                    <div class="input-group mb-2">
                        <span class="input-group-text bg-white " id="basic-addon1"><i class="fa-sharp fa-solid fa-phone fa-xl"></i></span>
                        <input type="text" class="form-control" name="id"  placeholder="Số điện thoại" style="height: 45px;"
                             required>                   
                    </div>          
                 </div>

                 <div class="col-sm-12">
                    <div class="input-group mb-2">
                        <span class="input-group-text bg-white " id="basic-addon1"><i class="fa-sharp fa-solid fa-lock fa-2xl"></i></span>
                        <input type="password" class="form-control" name="id"  placeholder="Mật Khẩu" style="height: 45px;"
                             required>                   
                    </div>          
                 </div>
                  
                 <div class="col-sm-12">
                    <div class="input-group mb-2">
                        <span class="input-group-text bg-white " id="basic-addon1"><i class="fa-sharp fa-solid fa-envelope fa-2xl"></i></span>
                        <input type="email" class="form-control" name="id"  placeholder="Email" style="height: 45px;"
                             required>                   
                    </div>          
                 </div>
                 <br> 
                <div class="text-center text-lg-start mt-2 pt-2">
                  <button type="button" class="btn btn-primary btn-lg"
                    style="padding-left: 2.5rem; padding-right: 2.5rem;">Cập nhật</button>
                </div>
      
              </form>
            </div>
          </div>
        </div>
      </section>