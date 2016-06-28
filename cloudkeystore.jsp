<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>
<html>
<head>
<body>
<link rel="stylesheet" type="text/css" href="style.css" />


<%
 String file = request.getParameter("userdata");
   System.out.println("user file"+file);
   
   String name=(String)session.getAttribute("aa");
	System.out.println("fname"+name);

	String em=(String)session.getAttribute("bb");
	System.out.println("Email is"+em);
	
	String fkey=(String)session.getAttribute("fkey");
	System.out.println("file key is"+fkey);
	

Connection con = null;
Statement st = null;
ResultSet rs = null;


 try{
con=databasecon.getconnection();
st=con.createStatement();
st.executeUpdate("UPDATE cloud SET cloudkey='"+fkey+"' where filename='"+name+"'");
response.sendRedirect("cloudkey.jsp?Message=success");
}

catch(Exception ex)
{
	out.println(ex);
}
%>
