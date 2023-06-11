<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/DoiMatKhau.css">
    <section class="vh-100">
        <div class="container-fluid h-custom">
          <div class="row d-flex justify-content-center align-items-center h-100">
            <!--Form Dang ki -->
            <div class="col-md-8 col-lg-6 col-xl-4 ">
              <form action="${pageContext.request.contextPath}/index/XacNhan" method="post">        
                <div class="divider d-flex align-items-center my-4">
                  <p class="text-center fw-bold mx-3 mb-0">Nhập mã xác nhận</p>
                </div>
                <div class="col-sm-12">
                  <div class="input-group mb-2">
                      <span class="input-group-text bg-white " id="basic-addon1"><i class="fa-solid fa-shield-halved fa-2xl"></i></i></span>
                      <input type="text" class="form-control"  name="code" value="${code}"  placeholder="Mã xác nhận" style="height: 45px;"
                           required>                   
                  </div>
                   <c:if test="${not empty error}">
       					 <p style="color: red">${error}</p>
    			   </c:if>          
               </div>     
                <div class="text-center  mt-2 pt-2">
                  <button type="submit" class="btn btn-primary btn-lg" style="width: 432px;">Xác nhận</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </section>