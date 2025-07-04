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
 String error1="",error2="",error3="",error4="",error5="";
boolean status=true;
 String a1=request.getParameter("q1");
 String a2=request.getParameter("q2");
 String a3=request.getParameter("q3");
 String a4=request.getParameter("q4");
 String a5=request.getParameter("q5");
 if(request.getParameter("submit")!=null){	
	 if(a1==null){error1="Please Answer Question 1"; status=false;}
	 if(a2==null){error2="Please Answer Question 2"; status=false;}
	 if(a3==null){error3="Please Answer Question 3"; status=false;}
	 if(a4==null){error4="Please Answer Question 4"; status=false;}
	 if(a5==null){error5="Please Answer Question 5"; status=false;}
	 
	if(status){
	int mark=0;
	if(a1.equals("servlet"))
		 mark++;
	if(a2.equals("jsp"))
		 mark++;
	 if(a3.equals("ejb"))
		 mark++;
	 if(a4.equals("mvc"))
		 mark++;
	 if(a5.equals("tomcat"))
		 mark++;
	  session.setAttribute("score", mark);
	  response.sendRedirect("q2.jsp");
	  return;  //optional
	 }//inner if end
 }//outer if end

%>
  <h2>Java EE Quiz - Page 1</h2>
    <form method="post" action="#">
        <p>1. Which component handles HTTP requests?</p>
        <input type="radio" name="q1" value="servlet"  <%= "servlet".equals(a1) ? "checked" : "" %>>Servlet<br>
        <input type="radio" name="q1" value="bean" <%= "bean".equals(a1) ? "checked" : "" %>>JavaBean<br>
		<div><font color="red"><%=error1 %></font></div>
        <p>2. Which is used to create dynamic HTML pages?</p>
        <input type="radio" name="q2" value="html" <%= "html".equals(a2) ? "checked" : "" %>>HTML<br>
        <input type="radio" name="q2" value="jsp" <%= "jsp".equals(a2) ? "checked" : "" %>>JSP<br>
		<div><font color="red"><%=error2 %></font></div>
        <p>3. Which is used for business logic in Java EE?</p>
        <input type="radio" name="q3" value="ejb" <%= "ejb".equals(a3) ? "checked" : "" %>>EJB<br>
        <input type="radio" name="q3" value="jdbc" <%= "jdbc".equals(a3) ? "checked" : "" %>>JDBC<br>
		<div><font color="red"><%=error3 %></font></div>
        <p>4. Which architecture does Java EE follow?</p>
        <input type="radio" name="q4" value="mvc" <%= "mvc".equals(a4) ? "checked" : "" %>>MVC<br>
        <input type="radio" name="q4" value="monolithic" <%= "monolithic".equals(a4) ? "checked" : "" %>>Monolithic<br>
		<div><font color="red"><%=error4 %></font></div>
        <p>5. Which server is commonly used for Java EE?</p>
        <input type="radio" name="q5" value="nginx" <%= "nginx".equals(a5) ? "checked" : "" %>>Nginx<br>
        <input type="radio" name="q5" value="tomcat" <%= "tomcat".equals(a5) ? "checked" : "" %>>Tomcat<br>
		<div><font color="red"><%=error5 %></font></div>
        <br>
        <input type="submit" name="submit" value=">>>">
    </form>
</div>
</body>
</html>