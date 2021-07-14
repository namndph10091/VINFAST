<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/css/bootstrap.min.css"></link>
<body>
	<div class="container">
    <div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card card-signin my-5">
          <div class="card-body">
            <h5 class="card-title text-center">Sign Up</h5>
            <form:form class="form-signin" action="/create-users" modelAttribute="item" method="post" enctype="multipart/form-data">
              <div class="form-label-group">
				<label for="username">Username</label>
				<form:input path="username" name="username" type="text" class="form-control" placeholder="Username" aria-label="Username"/>
              </div>

              <div class="form-label-group">
              	<label for="password">Password</label>
				<form:input path="password" name="password" type="password" class="form-control" placeholder="Password" aria-label="Password"/>
              </div>
              <div class="form-label-group">
              	<label for="inputPassword">Confirm Password</label>
                <input name="passwordcf" type="password" id="inputPassword" class="form-control" placeholder="Password" required>
              </div>
              <div class="form-label-group">
              	<label for="fullname">Fullname</label>
				<form:input path="fullname" type="text" class="form-control" placeholder="Fullname" aria-label="Fullname"/>
              </div>
              <div class="form-label-group">
              	<label for="password">Email</label>
				<form:input path="email" type="text" class="form-control" placeholder="Email" aria-label="Email"/>
              </div>
              <div class="form-label-group">
				 <label for="photo">Photo</label>
					<input type="file" class="form-control" name="image"/>
              </div>
              <form:hidden path="activated" value="1"/>
              <form:hidden path="admin" value="0"/>
              <span>${ message }</span>
              <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Sign up</button>
              <a href="/login" class="btn btn-lg btn-primary btn-block text-uppercase">Cance</a>
            </form:form>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>