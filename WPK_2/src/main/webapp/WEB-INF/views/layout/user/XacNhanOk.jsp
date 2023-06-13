<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<link rel="stylesheet" href="/css/DoiMatKhau.css">
    <section class="vh-100">
        <div class="container-fluid h-custom">
          <div class="row d-flex justify-content-center align-items-center h-100">
            <!--Form Dang ki -->
            <div class="col-md-8 col-lg-6 col-xl-4 ">
              <form action="${pageContext.request.contextPath}/index/form" method="get">            
                 <div class="divider d-flex align-items-center my-4">
                  <p class="text-center fw-bold mx-3 mb-0">Xác Nhận Thành công!</p>
                </div>
                <div class="text-center  mt-2 pt-2">
                  <button type="submit" class="btn btn-primary btn-lg" style="width: 432px;">Trở về Trang Chủ</button>
                </div>
              </form>
              <form action="${pageContext.request.contextPath}/index/DangNhap" method="get">            
                <div class="text-center  mt-2 pt-2">
                  <button type="submit" class="btn btn-primary btn-lg" style="width: 432px;">Trở về trang Đăng Nhập</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </section>