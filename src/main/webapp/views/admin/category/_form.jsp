<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form:form action="/admin/category/index" modelAttribute="item" method="post" class="col-3">
		
		<form:input path="id" placeholder="Category Id?" class="form-control" id="validationCustom03"/>
		<form:errors path="id"/>
		<form:input path="name" placeholder="Category Name?" class="form-control" id="validationCustom03"/>
		<form:errors path="name"/>
		<hr>
		<button class="btn btn-outline-secondary" formaction="/admin/category/create">Create</button>
		<button class="btn btn-outline-secondary" formaction="/admin/category/update">Update</button>
		<a class="btn btn-outline-secondary" href="/admin/category/delete/${item.id}">Delete</a>
		<a class="btn btn-outline-secondary" href="/admin/category/index">Reset</a>
	</form:form>
	<span>${ message }</span>
</body>
</html>