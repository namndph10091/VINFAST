<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>Revenue</h3>
	<table  class="table table-dark">
		  <thead>
		    <tr>
		      <th scope="col">Category</th>
		      <th scope="col">Quantity</th>
		      <th scope="col">Revenue</th>
		    </tr>
		  </thead>
		  <tbody>
		  <c:forEach var="list" items="${ list }">
		  	<tr>
		  		<td>${ list.loai.name }</td>
		  		<td>${ list.soluong }</td>
		  		<td>${ list.doanhthu } triệu VNĐ</td>
		  	</tr>
		  </c:forEach>
		  </tbody>
	</table>
</body>
</html>