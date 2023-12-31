<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

  <link rel="stylesheet" href="/css/DangNhap.css">
  <section class="vh-100">
    <div class="container-fluid h-custom">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <!-- Logo -->
        <div class="col-md-9 col-lg-6 col-xl-5">
          <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp" class="img-fluid"
            alt="Sample image">
        </div>
        <!-- Form Dang Nhap -->
        <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
          <form action="${pageContext.request.contextPath}/index/DangNhap" method="post">
            <div class="divider d-flex align-items-center my-4">
              <p class="text-center fw-bold mx-3 mb-0">Đăng nhập</p>
            </div>

            <div class="alert alert-danger mt-3" role="alert" style="color:red" ${empty errorMessage ? 'hidden' : '' }>
              ${errorMessage}
            </div>
            <!-- Tai khoan input -->

            <div class="col-sm-12 mb-0">
              <div class="input-group">
                <span class="input-group-text bg-white " id="basic-addon1"><i
                    class="fa-sharp fa-solid fa-user fa-2xl"></i></span>
                <input type="text" class="form-control" name="taiKhoan" placeholder="Tài Khoản" value="${taiKhoan}"
                  style="height: 45px;" required>
              </div>
            </div>

            <!-- Password input -->
            <div class="col-sm-12">
              <div class="input-group mb-2">
                <span class="input-group-text bg-white " id="basic-addon1"><i
                    class="fa-sharp fa-solid fa-lock fa-2xl"></i></span>
                <input type="password" class="form-control" name="matKhau" placeholder="Mật Khẩu" style="height: 45px;"
                  required>
              </div>
            </div>

            <div class="d-flex justify-content-between align-items-center">
              <!-- Checkbox -->
              <div class="form-check mb-0">
                <input class="form-check-input me-2" name="ghiNho" type="checkbox" value="true" id="form2Example3" />
                <label class="form-check-label" for="form2Example3">
                  Ghi nhớ tôi
                </label>
              </div>
              <a href="/index/QuenMatKhau" class="text-body">Quên mật khẩu?</a>
            </div>

            <div class="text-center text-lg-start mt-3 pt-2">

              <button type="submit" class="btn btn-primary btn-lg"
                style="padding-left: 2.5rem; padding-right: 2.5rem;">Đăng nhập</button>


              <p class="small fw-bold mt-2 pt-1 mb-0">Bạn không có tài khoản? <a href="/index/DangKi"
                  class="link-danger">Đăng kí ngay</a></p>
            </div>

          </form>
        </div>
      </div>
    </div>

  </section>