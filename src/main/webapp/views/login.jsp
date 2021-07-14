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
	<div class="container">
    <div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card card-signin my-5">
          <div class="card-body">
            <h5 class="card-title text-center">Đăng Nhập</h5>
            <form class="form-signin" method="post" action="/login">
            	<span>${views}</span>
              <div class="form-label-group">
                <input name="username" type="text" id="inputEmail" class="form-control" placeholder="Email address" required autofocus value="${ username }">
                <label for="inputEmail">Email address</label>
              </div>

              <div class="form-label-group">
                <input name="password" type="password" id="inputPassword" class="form-control" placeholder="Password" required>
                <label for="inputPassword">Password</label>
              </div>

              <div class="custom-control custom-checkbox mb-3">
                <input name="chkRemember" type="checkbox" class="custom-control-input" id="customCheck1">
                <label class="custom-control-label" for="customCheck1">Remember password</label>
              </div>
              <p style="color: red;">${ message }</p>
              <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Sign in</button>
                <button href="/sign-up" class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Sign up</button>
            
            </form>
           
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>