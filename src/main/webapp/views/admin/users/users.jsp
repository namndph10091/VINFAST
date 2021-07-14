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
     <section class="container">
	        <h3 class="fw-light">USER MANAGEMENT</h3>
	  </section>
	  <div>
		<div>
			<jsp:include page="form.jsp"></jsp:include>
		</div>
	  	<table class="table table-hover table-dark">
		  <thead>
		    <tr>
		      <th scope="col">Username</th>
		      <th scope="col">Fullname</th>
		      <th scope="col">Em
		      ail</th>
		      <th scope="col">Photo</th>
		      <th scope="col">Role</th>
		      <th scope="col">Activited</th>
		      <th scope="col">Action</th>
		    </tr>
		  </thead>
		  <c:forEach var="item" items="${page.content}">
		  	<tbody>
		    <tr>
		      <td "table-primary">${ item.username }</td>
		      <td "table-secondary">${ item.fullname }</td>
		      <td"table-danger">${ item.email }</td>
		      <td><img alt="${ item.photo }" src="/avatar/${ item.photo }" width="30px"></td>
		      
		      <td>
		      	<c:choose>
					<c:when test="${item.admin==true}">
				        <span>Admin</span>
				    </c:when>    
				    <c:otherwise>
				        <span>User</span>
				    </c:otherwise>
				</c:choose>
			</td>
		      <td>
		      	<c:choose>
					<c:when test="${item.activated==true}">
				        <span>Hoạt động</span>
				    </c:when>    
				    <c:otherwise>
				        <span>Không hoạt động</span>
				    </c:otherwise>
				</c:choose>
			</td>
				<td><a href="/admin/user/edit/${ item.username }"> edit</a></td>
		    </tr>
		  </tbody>
		  </c:forEach>
		</table>
	  </div>
	  <div class="">
      		<nav aria-label="Page navigation example">
			  <ul class="pagination">
			    <li class="page-item">
			      <a class="page-link" href="/admin/user/index?p=0" aria-label="Previous">
			        <span aria-hidden="true">&laquo;</span>
			        <span class="sr-only">First</span>
			      </a>
			    </li>
			    <li class="page-item"><a class="page-link" href="/admin/user/index?p=${page.number-1}">Previous</a></li>
			    <li class="page-item"><a class="page-link" href="/admin/user/index?p=${page.number+1}">Next</a></li>
			    <li class="page-item">
			      <a class="page-link" href="/admin/user/index?p=${page.totalPages-1}" aria-label="Next">
			        <span class="sr-only">Last</span>
			        <span aria-hidden="true">&raquo;</span>
			      </a>
			    </li>
			  </ul>
			</nav>
      	</div>
</body>
</html>