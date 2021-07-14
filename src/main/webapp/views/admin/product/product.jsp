<%@ page language="java" contentType="text/html; charset=ISO-UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<main>
	  <section class="container">
	    <h3 class="fw-light">PRODUCT MANAGEMENT</h3>
	  </section>
	  <div class="album py-5 bg-light">
	  	<div>
	  		<jsp:include page="form.jsp"></jsp:include>
	  	</div>
	    <div class="container">
			<label>List Product</label>
			<select>
			<c:forEach var="cate" items="${cates}">
					<option value="${ cate.id }">${cate. name }</option>
			</c:forEach>
			</select>
	      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
	      <table  class="table table-striped table-dark">
		        	<thead>
		        		<tr>
		        			<td scope="col">#</td>
		        			<td scope="col">Name</td>
		        			<td scope="col">Image</td>
		        			<td scope="col">Price</td>
		        			<td scope="col">Create date</td>
		        			<td scope="col">Available</td>
		        			<td scope="col">Action</td>
		        		</tr>
		        	</thead>
	        <c:forEach var="item" items="${page.content}">
		        	<tbody>
		        		<tr>
		        			<td>${ item.id }</td>
		        			<td>${ item.name }</td>
		        			<td><img width="50px" alt="anh" src="/images/${ item.images }"></td>
		        			<td>${ item.price}</td>
		        			<td>${ item.createDate}</td>
		        			<td>
		        				<c:choose>
								    <c:when test="${item.available==true}">
								        <span>Đang kinh doanh</span>
								    </c:when>    
								    <c:otherwise>
								        <span>Ngừng kinh doanh</span> 
								    </c:otherwise>
								</c:choose>
		        			</td>
		        			<td><a href="/admin/product/edit/${ item.id}"> edit</a></td>
		        		</tr>
		        	</tbody>
			</c:forEach>
			</table>
	      </div>
	      	<div class="">
	      		<nav aria-label="Page navigation example">
				  <ul class="pagination">
				    <li class="page-item">
				      <a class="page-link" href="/admin/product/index?p=0" aria-label="Previous">
				        <span aria-hidden="true">&laquo;</span>
				        <span class="sr-only">First</span>
				      </a>
				    </li>
				    <li class="page-item"><a class="page-link" href="/admin/product/index?p=${page.number-1}">Previous</a></li>
				    <li class="page-item"><a class="page-link" href="/admin/product/index?p=${page.number+1}">Next</a></li>
				    <li class="page-item">
				      <a class="page-link" href="/admin/product/index?p=${page.totalPages-1}" aria-label="Next">
				        <span class="sr-only">Last</span>
				        <span aria-hidden="true">&raquo;</span>
				      </a>
				    </li>
				  </ul>
				</nav>
	      	</div>
	    </div>
	  </div>
	</main>
	
</body>
</html>