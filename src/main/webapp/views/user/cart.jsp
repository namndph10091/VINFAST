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
	<table class="table table-sm table-dark">
		<tr>
			<th scope="col">#</th>
			<th scope="col">Product name</th>
			<th scope="col">Price</th>
			<th scope="col">Quantity</th>
			<th scope="col">Amount</th>
			<th scope="col">Action</th>
			<th scope="col"></th>
		</tr>
		<c:forEach var="item" items="${cart}">
		<form action="/shopping-cart/update/${item.productid}" method="post">
				<input type="hidden" name="id" value="${item.productid}">
				<tr>
					<td>${item.productid}</td>
					<td>${item.name}</td>
					<td>${item.price}  triệu VNĐ</td>
					<td><input name="qty" value="${item.qty}"
					type="number" min="1"
					onblur="this.form.submit()" style="width:50px;"></td>
					<td>${item.price * item.qty} triệu VNĐ</td>
					<td>
					<a href="/shopping-cart/delede/${item.productid}">Remove</a>
					</td>
				</tr>
			</c:forEach>
		</form>
	</table>
	<p>Tổng: ${ total } triệu VNĐ</p>
	<a class="btn btn-sm btn-outline-secondary" href="/shopping-cart/clear">Clear Cart</a>
	<a class="btn btn-sm btn-outline-secondary" href="/home">Add more</a>
	<form action="/shopping-cart/order" method="post">
		<div class="mb-3">
			<label for="exampleFormControlTextarea1" class="form-label">Fullname</label>
			<input name="name" class="form-control" type="text" placeholder="Disabled input" aria-label="Disabled input example" disabled value="${ name }">
		  <label for="exampleFormControlTextarea1" class="form-label">Address</label>
		  <textarea name="address" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
		  <span style="color: red;">${ message }</span>
		</div>
		<button class="btn btn-sm btn-outline-secondary">Order</button>
	</form>
</body>
</html>