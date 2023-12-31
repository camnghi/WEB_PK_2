<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="/css/DangNhap.css">

    <section class="vh-100">
        <div class="container-fluid h-custom">
          <div class="row d-flex justify-content-center align-items-center h-100">
            <!--Form Dang ki -->
            <div class="col-md-8 col-lg-6 col-xl-4 ">
              <form  method="post" action="${pageContext.request.contextPath}/index/QuenMatKhau">        
                <div class="divider d-flex align-items-center my-4">
                  <p class="text-center fw-bold mx-3 mb-0">Quên Mật Khẩu</p>
                </div>
                <c:if test="${not empty error}">
				    <div class=" alert-danger" role="alert" style="color:red">
				        ${error}
				    </div>
				</c:if>
                 <c:if test="${not empty message}">
				    <div class=" alert-danger" role="alert" style="color:green">
				        ${message}
				    </div>
				</c:if>
                <div class="col-sm-12">
                  <div class="input-group mb-2">
                      <span class="input-group-text bg-white " id="basic-addon1"><i class="fa-sharp fa-solid fa-envelope fa-2xl"></i></span>
                      <input type="email" class="form-control" name="email"  placeholder="Email" style="height: 45px;"
                           required>                   
                  </div>          
               </div>     
                <div class="text-center  mt-2 pt-2">
                  <button type="submit" class="btn btn-primary btn-lg"
                    style="width: 490px;">Lấy Mật Khẩu Mới Qua Mail Của Bạn</button>
                </div> 
              </form>
            </div>
          </div>
        </div>
      </section>
