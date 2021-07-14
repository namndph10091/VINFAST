<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/css/bootstrap.min.css"></link>
</head>
<body>
<!-- Header -->
    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
     

     
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
     <a href="/true" > <img src="http://vinfastphamhung3s.com/wp-content/uploads/2019/09/dailyxevinfast-logo.png" href="/true" width="123px" height="45px"></a>
        
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="/home">DANH SÁCH SẢN PHẨM <span class="sr-only"></span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/admin/user/index">USERS</a>
            </li>
         
            <li class="nav-item">
              <a class="nav-link " href="/shopping-cart/index">GIỎ HÀNG</a>
            </li>
             <li class="nav-item">
              <a class="nav-link " href="/admin/order/index">ORDER</a>
            </li>
            <li class="nav-item">
              <a class="nav-link " href="/admin/product/index">PRODUCT</a>
            </li>
            <li class="nav-item">
              <a class="nav-link " href="/admin/category/index">CATEGOTY</a>
            </li>

            <li class="nav-item">
              <a class="nav-link " href="/admin/order/report">REPORT</a>
            </li>
            <li class="nav-item">
              <a class="nav-link " href="/login">ĐĂNG NHẬP</a>
            </li>
            <li class="nav-item">
              <a class="nav-link " href="/sign-up">ĐĂNG KÝ</a>
            </li>
          </ul>
          
        </div>
      </nav>
       <div class="col-md-3 text-end">
       	<a href="/login" class="btn btn-outline-primary me-2">ĐĂNG XUẤT</a>
      </div>
    </header>
    
	<!-- End Header -->
	
	    <!-- Content -->
	    <div class="container">
	    		<jsp:include page="${ view }"></jsp:include>
		</div>
	    <!-- End Content -->
	<div class="mt-5">
	    
		  <footer class="text-center text-white" style="background-color: #caced1;">
                <!-- Grid container -->
                <div class="container p-4">
                  <!-- Section: Images -->
                  <section class="">
                    <div class="row">
                      <div class="col-lg-2 col-md-12 mb-4 mb-md-0">
                        <div
                          class="bg-image hover-overlay ripple shadow-1-strong rounded"
                          data-ripple-color="light"
                        >
                          <img
                            src="https://ircdn.vingroup.net/storage/uploads/0_Tintuchoatdong/2019/April/OT3.jpg"
                            class="w-100"
                          />
                          <a href="#!">
                            <div
                              class="mask"
                              style="background-color: rgba(251, 251, 251, 0.2);"
                            ></div>
                          </a>
                        </div>
                      </div>
                      <div class="col-lg-2 col-md-12 mb-4 mb-md-0">
                        <div
                          class="bg-image hover-overlay ripple shadow-1-strong rounded"
                          data-ripple-color="light"
                        >
                          <img
                            src="https://ircdn.vingroup.net/storage/uploads/0_Tintuchoatdong/2019/April/OT1.jpg"
                            class="w-100"
                          />
                          <a href="#!">
                            <div
                              class="mask"
                              style="background-color: rgba(251, 251, 251, 0.2);"
                            ></div>
                          </a>
                        </div>
                      </div>
                      <div class="col-lg-2 col-md-12 mb-4 mb-md-0">
                        <div
                          class="bg-image hover-overlay ripple shadow-1-strong rounded"
                          data-ripple-color="light"
                        >
                          <img
                            src="https://cafefcdn.com/2019/3/7/a4-15519214735061764843605.jpg"
                            class="w-100"
                          />
                          <a href="#!">
                            <div
                              class="mask"
                              style="background-color: rgba(251, 251, 251, 0.2);"
                            ></div>
                          </a>
                        </div>
                      </div>
                      <div class="col-lg-2 col-md-12 mb-4 mb-md-0">
                        <div
                          class="bg-image hover-overlay ripple shadow-1-strong rounded"
                          data-ripple-color="light"
                        >
                          <img
                            src="https://vcdn1-vnexpress.vnecdn.net/2019/06/19/2-1560913553.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=uSsv1pi_AuHgZnvQhTnvvg"
                            class="w-100"
                          />
                          <a href="#!">
                            <div
                              class="mask"
                              style="background-color: rgba(251, 251, 251, 0.2);"
                            ></div>
                          </a>
                        </div>
                      </div>
                      <div class="col-lg-2 col-md-12 mb-4 mb-md-0">
                        <div
                          class="bg-image hover-overlay ripple shadow-1-strong rounded"
                          data-ripple-color="light"
                        >
                          <img
                            src="https://cdn.baogiaothong.vn/upload/images/2018-4/article_img/2018-11-26/o-to-vinfast-gia-thanh-1543218829-width1199height744.jpg"
                            class="w-100"
                          />
                          <a href="#!">
                            <div
                              class="mask"
                              style="background-color: rgba(251, 251, 251, 0.2);"
                            ></div>
                          </a>
                        </div>
                      </div>
                      <div class="col-lg-2 col-md-12 mb-4 mb-md-0">
                        <div
                          class="bg-image hover-overlay ripple shadow-1-strong rounded"
                          data-ripple-color="light"
                        >
                          <img
                            src="https://lh3.googleusercontent.com/proxy/ysFAlM7uPjlCjR7Hn6CT3kT2O-LU-tnrkzM63yaioYbBt8_5ldBuBLnAWlt6ESqXc0-QvvLvgiz2pjIYgD_ViQri7cAlF16jwKaqz96Grd74e5Blg-lmjHYiVQBNHOPOW-uhDIcdR49b2tYKO6o"
                            class="w-100"
                          />
                          <a href="#!">
                            <div
                              class="mask"
                              style="background-color: rgba(251, 251, 251, 0.2);"
                            ></div>
                          </a>
                        </div>
                      </div>
                    </div>
                  </section>
                  <!-- Section: Images -->
                </div>
                <!-- Grid container -->
              
                <!-- Copyright -->
                <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
                  © 2020 Copyright:
                  <a class="text-white" href="https://mdbootstrap.com/">MDBootstrap.com</a>
                </div>
                <!-- Copyright -->
              </footer>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="${ pageContext.request.contextPath }/js/bootstrap.min.js"></script>
</body>
</html>