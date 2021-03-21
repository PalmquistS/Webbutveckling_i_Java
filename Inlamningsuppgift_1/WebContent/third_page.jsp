<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css" />
<meta charset="UTF-8">
<title>Third page</title>
</head>
<body>
<jsp:include page="header.jsp" />
	<h1>Third Page</h1>

	<%
	String text = request.getParameter("inputtext");
	out.println("You have written the text: " + text);
	%>
	
	<jsp:include page="footer.jsp" />
</body>
</html>