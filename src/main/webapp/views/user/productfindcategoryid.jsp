<%@ page language="java" contentType="text/html; charset=UTF-8"
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

        <!-- Header -->
    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
      <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
      		<c:forEach var="cate" items="${cates}">
					<li><a href="/home/category/${ cate.id }" class="nav-link px-2 link-dark">${ cate. name }</a></li>
			</c:forEach>
      </ul>
    </header>
	<!-- End Header -->

  <div class="album py-5 bg-light">
    <div class="container">

      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
        <c:forEach var="item" items="${page.content}">
			<div class="col">
	          <div class="card shadow-sm">
	            <img src="/images/${ item.images }" class="img-thumbnail" alt="anh">
	
	            <div class="card-body">
	              <p class="card-text">Name: ${item.name}</p>
	              <p class="card-text">Price: ${item.price} triệu VNĐ</p>
	              <div class="d-flex justify-content-between align-items-center">
	                <div class="btn-group">
	                  <a class="btn btn-sm btn-outline-secondary" href="/shopping-cart/add/${ item.id }">Add to cart</a>
	                </div>
	              </div>
	            </div>
	          </div>
	        </div>
		</c:forEach>
      </div>
      	<div >
      		<nav aria-label="Page navigation example">
			  <ul class="pagination">
			    <li class="page-item">
			      <a class="page-link" href="/home/category/${ categoryid }?p=0" aria-label="Previous">
			        <span aria-hidden="true">&laquo;</span>
			        <span class="sr-only">First</span>
			      </a>
			    </li>
			    <li class="page-item"><a class="page-link" href="/home/category/${ categoryid }?p=${page.number-1}">Previous</a></li>
			    <li class="page-item"><a class="page-link" href="/home/category/${ categoryid }?p=${page.number+1}">Next</a></li>
			    <li class="page-item">
			      <a class="page-link" href="/home/category/${ categoryid }?p=${page.totalPages-1}" aria-label="Next">
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