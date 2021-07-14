<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/css/bootstrap.min.css"></link>
</head>
<body>
<h3 class="fw-light">CATEGORY MANAGEMENT</h3>
	<jsp:include page="_form.jsp"/>
	<hr>
	<jsp:include page="_table.jsp"/>
</body>
</html>