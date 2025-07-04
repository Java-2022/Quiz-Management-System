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
<%
 if(request.getParameter("submit")!=null){
	 int mark=(Integer)session.getAttribute("score");
	
	 if(request.getParameter("q1")!=null && request.getParameter("q1").equals("servlet"))
		 mark++;
	 if(request.getParameter("q2")!=null && request.getParameter("q2").equals("jsp"))
		 mark++;
	 if(request.getParameter("q3")!=null && request.getParameter("q3").equals("ejb"))
		 mark++;
	 if(request.getParameter("q4")!=null && request.getParameter("q4").equals("mvc"))
		 mark++;
	 if(request.getParameter("q5")!=null && request.getParameter("q5").equals("tomcat"))
		 mark++;
	  session.setAttribute("score", mark);
	  response.sendRedirect("score.jsp");
	  return;  //optional
	 
 }

%>
  <h2>Java EE Quiz - Page 3</h2>
    <form method="post" action="#">
        <p>1. Which component handles HTTP requests?</p>
        <input type="radio" name="q1" value="servlet">Servlet<br>
        <input type="radio" name="q1" value="bean">JavaBean<br>

        <p>2. Which is used to create dynamic HTML pages?</p>
        <input type="radio" name="q2" value="html">HTML<br>
        <input type="radio" name="q2" value="jsp">JSP<br>

        <p>3. Which is used for business logic in Java EE?</p>
        <input type="radio" name="q3" value="ejb">EJB<br>
        <input type="radio" name="q3" value="jdbc">JDBC<br>

        <p>4. Which architecture does Java EE follow?</p>
        <input type="radio" name="q4" value="mvc">MVC<br>
        <input type="radio" name="q4" value="monolithic">Monolithic<br>

        <p>5. Which server is commonly used for Java EE?</p>
        <input type="radio" name="q5" value="nginx">Nginx<br>
        <input type="radio" name="q5" value="tomcat">Tomcat<br>

        <br>
        <input type="submit" name="submit" value=">>>">
    </form>
</div>
</body>
</html>