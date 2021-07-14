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
	<table  class="table table-striped table-dark">
		  <thead>
		    <tr>
		      <th >ID</th>
		      <th >Product name</th>
		      <th >Price</th>
		      <th >Quantity</th>
		      <th >Total</th>
		      <th ></th>
		    </tr>
		  </thead>
		  <tbody>
		  <c:forEach var="detail" items="${ detail }">
		  	<tr>
		  		<td>${ detail.id }</td>
		  		<td>${ detail.product.name }</td>
		  		<td>${ detail.price } triệu VNĐ</td>
		  		<td>${ detail.quantity }</td>
		  		<td>${ detail.price*detail.quantity } triệu VNĐ</td>
		  	</tr>
		  </c:forEach>
		  </tbody>
	</table>
</body>
</html>