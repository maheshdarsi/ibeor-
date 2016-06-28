<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>
<html>
<head>
<body>
<link rel="stylesheet" type="text/css" href="style.css" />


<%
String id=request.getQueryString();
String host="", user="", pass="";
String k=(String)session.getAttribute("accesskey");
System.out.println("mail send filekey"+k);

//String em=(String)session.getAttribute("bb");
//System.out.println("fname"+em);

 String c=(String)session.getAttribute("aa");
System.out.println("filename:"+c);

//String em=(String)session.getAttribute("bb");
//System.out.println("fname"+em);
//String a="Completed";

Connection con = null;
Statement st = null;
ResultSet rs = null;


 try{
con=databasecon.getconnection();
st=con.createStatement();
st.executeUpdate("UPDATE cloud SET accesskey='"+k+"' where filename='"+c+"'");
response.sendRedirect("pkgupdate.jsp?Message=success");
}

catch(Exception ex)
{
	out.println(ex);
}
%>
