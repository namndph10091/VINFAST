<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="/magiao" method="post" enctype="multipart/form-data">
		<input type="file" name="avatar">
		<textarea name="abc" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
		<button>submit</button>
	</form>
	<c:forEach var="item" items="${page.content}">
		${ item.id }
	</c:forEach>
</body>
</html>