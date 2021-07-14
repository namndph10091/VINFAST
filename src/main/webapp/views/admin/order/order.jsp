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
	<header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
      <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
					<li><a href="/admin/order/index/1" class="nav-link px-2 link-dark">Chưa xác nhận</a></li>
					<li><a href="/admin/order/index/2" class="nav-link px-2 link-dark">Chưa thanh toán</a></li>
					<li><a href="/admin/order/index/3" class="nav-link px-2 link-dark">Đã thanh toán</a></li>
      </ul>
    </header>
	<h3>Order detail</h3>
	<table  class="table table-hover table-dark">
		  <thead>
		    <tr>
		      <th scope="col">#</th>
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
		  		<td><c:set var = "salary" value = "${order.status}"/>
			      <c:choose>
				     <c:when test = "${salary <= 1}">
			            Xác nhận
			         </c:when>
			         <c:when test = "${salary >= 1 && salary <3}">
			            Chưa thanh toán
			         </c:when>
			         <c:when test = "${salary >= 3}">
			            Đã thanh toán
			         </c:when>
			      </c:choose></td>
		  		<td><c:set var = "salary" value = "${order.status}"/>
			      <c:choose>
				     <c:when test = "${salary <= 1}">
			            <a class="btn btn-outline-success" href="/admin/order/update/${ order.id }">Xác nhận</a>
			            <a class="btn btn-outline-info" href="/admin/order/show/${ order.id }">View</a>
			         </c:when>
			         <c:when test = "${salary >= 1}">
			           <a class="btn btn-outline-info" href="/admin/order/show/${ order.id }">View</a>
			         </c:when>
			      </c:choose></td>
		  	</tr>
		  </c:forEach>
		  </tbody>
	</table>
</body>
</html>