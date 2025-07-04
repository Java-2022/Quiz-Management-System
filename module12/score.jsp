<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h1> Your Score <%=session.getAttribute("score") %>  / 15 </h1>
<h3><a href="q1.jsp">Try Again</a></h3>
</div>
</body>
</html>