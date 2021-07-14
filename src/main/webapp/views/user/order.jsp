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
	<table  class="table table-striped table-dark">
		  <thead>
		    <tr>
		      <th scope="col">ID</th>
		      <th scope="col">Full name</th>
		      <th scope="col">createDate</th>
		      <th scope="col">Address</th>
		      <th scope="col">Status</th>
		      <th scope="col"></th>
		    </tr>
		  </thead>
		  <tbody>
		  <c:forEach var="order" items="${ order }">
		  	<tr>
		  		<td>${ order.id }</td>
		  		<td>${ order.users.fullname }</td>
		  		<td>${ order.cteateDate }</td>
		  		<td>${ order.address }</td>
		  		<%-- <td>${ order.status }</td> --%>
			      <td><c:set var = "salary" value = "${order.status}"/>
			      <c:choose>
				     <c:when test = "${salary <= 1}">
			            Đang xác nhận
			         </c:when>
			         <c:when test = "${salary >= 1 && salary <3}">
			            Thanh toán
			         </c:when>
			         <c:when test = "${salary >= 3}">
			            Đã thanh toán
			         </c:when>
			      </c:choose></td>
			      <td><c:set var = "salary" value = "${order.status}"/>
			      <c:choose>
				     <c:when test = "${salary <= 1}">
			            <a class="btn btn-outline-info" href="/shopping-cart/order/show/${ order.id }">View</a>
			         </c:when>
			         <c:when test = "${salary >= 1 && salary <3}">
			            <a class="btn btn-outline-success" href="/shopping-cart/order/pay/${ order.id }">Thanh toán</a>
			            <a class="btn btn-outline-info" href="/shopping-cart/order/show/${ order.id }">View</a>
			         </c:when>
			         <c:when test = "${salary >= 3}">
			            <a class="btn btn-outline-info" href="/shopping-cart/order/show/${ order.id }">View</a>
			         </c:when>
			      </c:choose>
			      </td>
		  	</tr>
		  </c:forEach>
		  </tbody>
	</table>
</body>
</html>