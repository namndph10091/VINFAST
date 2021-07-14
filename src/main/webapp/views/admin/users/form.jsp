<%@ page language="java" contentType="text/html; charset=ISO-UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container-fluid">
		<div class="album py-5 bg-light">
			<form:form action="/admin/user/index" modelAttribute="item" method="post" enctype="multipart/form-data">
				<div class="row">
				  <div class="col">
				  	<label for="username">Username</label>
				    <form:input path="username" type="text" class="form-control" placeholder="Username" aria-label="Username"/>
				    <form:errors path="username" cssClass="error"></form:errors>
				  </div>
				  <div class="col">
				  	<label for="password">Password</label>
				    <form:input path="password" type="password" class="form-control" placeholder="Password" aria-label="Password"/>
				    <form:errors path="password" cssClass="error"></form:errors>
				  </div>  
				</div>
				<div  class="row">
					<div class="col">
				  	<label for="fullname">Fullname</label>
				  	<form:input path="fullname" type="text" class="form-control" placeholder="Fullname" aria-label="Fullname"/>
				  	<form:errors path="fullname" cssClass="error"></form:errors>
				  </div>
				  <div class="col">
				  	<label for="password">Email</label>
				  	<form:input path="email" type="text" class="form-control" placeholder="Email" aria-label="Email"/>
				  	<form:errors path="email" cssClass="error"></form:errors>
				  </div>
				</div>
				<div  class="row">
					<div class="col">
					    <label for="photo">Photo</label>
					    <input type="file" class="form-control" name="image"/>
					    <form:errors path="photo" cssClass="error"></form:errors>
			  		</div>
			  		<div class="col">
					   <label for="admin">Phân quyền</label>
					   <form:select path="admin" class="form-control">
					   		<form:option value="1">Admin</form:option>"
					    	<form:option value="0">User</form:option>"
					   </form:select>
					</div>
					<div class="col">
					    <label for="activated">Trạng thái</label>
					    <form:select path="activated" class="form-control">
					    	<form:option value="1">Đang hoạt động</form:option>"
					    	<form:option value="0">Không hoạt động</form:option>"
					    </form:select>
					 </div>
				</div>
				<div class="mb-3" style="margin-top: 20px; text-align: center;">
					 <button formaction="/admin/user/create" type="submit" class="btn btn-primary">Create</button>
					 <button formaction="/admin/user/update" type="submit" class="btn btn-primary">Update</button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>