<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đặt Lại Mật khẩu</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="/css/DangNhap.css">
</head>
<body>
    <section class="vh-100">    
        <div class="container-fluid h-custom">
          <div class="row d-flex justify-content-center align-items-center h-100">
            <!--Form Dang ki -->
            <div class="col-md-8 col-lg-6 col-xl-4 ">
              <form>        
                <div class="divider d-flex align-items-center my-4">
                  <p class="text-center fw-bold mx-3 mb-0">Đặt Lại Mật Khẩu</p>
                </div>
                <div class="col-sm-12">
                  <div class="input-group mb-2">
                      <span class="input-group-text bg-white " id="basic-addon1"><i class="fa-sharp fa-solid fa-envelope-circle-check fa-xl"></i></span>
                      <input type="email" class="form-control" name="id"  placeholder="Mã Xác Nhận" style="height: 45px;"
                           required>                   
                  </div>          
               </div> 

               <div class="col-sm-12">
                <div class="input-group mb-2">
                    <span class="input-group-text bg-white " id="basic-addon1"><i class="fa-sharp fa-solid fa-lock fa-2xl"></i></span>
                    <input type="password" class="form-control" name="id"  placeholder="Mật Khẩu Mới" style="height: 45px;"
                         required>                   
                </div>          
             </div>

             <div class="col-sm-12">
                <div class="input-group mb-2">
                    <span class="input-group-text bg-white " id="basic-addon1"><i class="fa-sharp fa-solid fa-lock fa-2xl"></i></span>
                    <input type="password" class="form-control" name="id"  placeholder="Nhập Lại Mật Khẩu Mới" style="height: 45px;"
                         required>                   
                </div>          
             </div>    
                <div class="text-center  mt-2 pt-2">
                  <button type="button" class="btn btn-primary btn-lg"
                    style="width: 490px;">Đặt Lại Mật Khẩu</button>
                </div>
      
              </form>
            </div>
          </div>
        </div>
        <div
          class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-primary">
          <!-- Copyright -->
          <div class="text-white mb-3 mb-md-0">
            Copyright © 2023 Form 404 Team
          </div>
          <!-- Right -->
        </div>
      </section>
    <script src="https://kit.fontawesome.com/e68b23e564.js" crossorigin="anonymous"></script>  
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>