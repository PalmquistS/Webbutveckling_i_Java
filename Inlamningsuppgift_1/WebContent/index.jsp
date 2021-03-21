<%@ page language="java" contentType="text/html; UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css" />
<meta charset="UTF-8">
<title>First page</title>
</head>
<body>




	<jsp:include page="header.jsp" />


<main>
		<div>

			<h1>First page</h1>

			<%String text = request.getParameter("inputtext"); %>

			<form
				action=<%if ("2".equals(request.getParameter("something"))) { %>
					<jsp:forward page = "second_page.jsp">
					<jsp:param name="inputtext" value= "<%= text %>"/>
					</jsp:forward>
					
				<%}
				if ("3".equals(request.getParameter("something"))) { %>
					<jsp:forward page = "third_page.jsp">
					<jsp:param name="inputtext" value= "<%= text %>"/>
					</jsp:forward>
					
				<%}
				if ("4".equals(request.getParameter("something"))) { %>
					<jsp:forward page = "fourth_page.jsp">
					<jsp:param name="inputtext" value= "<%= text %>"/>
					</jsp:forward>
					
					
				<%}%> >
				
				Write your text here: <input type="text" name="inputtext"> <select
					name="something">
					<option value="2">Second page</option>
					<option value="3">Third page</option>
					<option value="4">Fourth page</option>
				</select> <input type="submit" value="Submit">
			</form>

		</div>
	</main>

	
	<jsp:include page="footer.jsp" />



</body>
</html>