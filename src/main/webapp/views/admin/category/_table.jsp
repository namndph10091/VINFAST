<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table class="table table-dark">
	  <thead>
	    <tr>
	      <th scope="col">#</th>
	      <th scope="col">Name</th>
	      <th scope="col">Action</th>
	    </tr>
	  </thead>
		  <c:forEach var="item" items="${items}">
		  <tbody>
		    <tr>
		      <th>${item.id}</th>
		      <td>${item.name}</td>
		      <td><a class="btn btn-outline-secondary" href="/admin/category/edit/${item.id}">Edit</a></td>
		    </tr>
		  </tbody>
		  </c:forEach>
	</table>
</body>
</html>