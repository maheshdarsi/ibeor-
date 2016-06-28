<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<html>
<head>
<%

String em=(String)session.getAttribute("bb");
System.out.println("fname"+em);
%>
<title>Identity-based Encryption</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="#FF9900">
<%
 String a=request.getParameter("uname");
 String b=request.getParameter("pass");
 System.out.println(a);
 System.out.println(b);

 if((a.equals("pkg"))&& (b.equals("pkg")))
 {

	response.sendRedirect("pkgdbshow.jsp");
 }
 else{
	 out.println("<h1>enter correct user name and password</h1>");
 
 }
%>
</body>
</html>