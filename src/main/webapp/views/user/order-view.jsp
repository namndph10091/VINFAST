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
<h3>Order detail</h3>
	<table class="table table-hover table-dark" >
		  <thead >
		    <tr>
		      <th scope="col" >ID</th>
		      <th scope="col" >Product name</th>
		      <th scope="col" >Price</th>
		      <th scope="col" >Quantity</th>
		      <th scope="col" >Total</th>
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
	<a class="btn btn-outline-info" href="/shopping-cart/order/index">Back</a>
</body>
</html>