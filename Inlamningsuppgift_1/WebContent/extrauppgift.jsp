<%@ page language="java" contentType="text/html; UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
					
				<%	
				//RequestDispatcher requestDispatcher = request.getRequestDispatcher("second_page.jsp");
				//requestDispatcher.forward(request, response);
					}
				if ("3".equals(request.getParameter("something"))) { %>
					<jsp:forward page = "third_page.jsp">
					<jsp:param name="inputtext" value= "<%= text %>"/>
					</jsp:forward>
					
				<%	//RequestDispatcher requestDispatcher = request.getRequestDispatcher("third_page.jsp");
					//requestDispatcher.forward(request, response);
				}
				if ("4".equals(request.getParameter("something"))) { %>
					<jsp:forward page = "fourth_page.jsp">
					<jsp:param name="inputtext" value= "<%= text %>"/>
					</jsp:forward>
					
					
				<%	//RequestDispatcher requestDispatcher = request.getRequestDispatcher("fourth_page.jsp");
					//requestDispatcher.forward(request, response);
				}%> >
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