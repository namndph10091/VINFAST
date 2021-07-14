<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="container">
		<div class="album py-5 bg-light">
			<form:form action="/admin/product/index" modelAttribute="item" method="post" enctype="multipart/form-data">
				<form:hidden path="id"/>
				<div class="row">
				  <div class="col">
				  	<label for="username">Name product</label>
				    <form:input path="name" type="text" class="form-control" placeholder="Product name" aria-label="Username"/>
				  </div>
				  <div class="col">
				  	<label for="price">Price</label>
				    <form:input path="price" type="text" class="form-control" placeholder="Price" aria-label="Password"/>
				  </div>  
				</div>
				<div  class="row">
					<div class="col ">
					    <label for="images">Image</label>
					    <input type="file" name="image" class="form-control">
			  		</div>
					   <div class="col-3">
					   		 <label for="activated">Trạng thái</label>
					    	<form:select path="available" class="form-control">
						    	<form:option value="1">Đang hoạt động</form:option>"
						    	<form:option value="0">Không hoạt động</form:option>"
					    	</form:select>
					   </div>
					    <div class="col-3">
					    <label>Category</label>
					    	<select name="categoryid" class="form-control">
					    		<c:forEach var="cate" items="${ cates }">
					    			<option value="${ cate.id }">${ cate.name }</option>
					    		</c:forEach>
					    	</select>
					    </div>
				</div>
				<div class="mb-3" style="margin-top: 20px; text-align: center;">
					 <button formaction="/admin/product/create" type="submit" class="btn btn-primary">Create</button>
					 <button formaction="/admin/product/update" type="submit" class="btn btn-primary">Update</button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>