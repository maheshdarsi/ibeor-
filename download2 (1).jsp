<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

<html>
<body bgcolor="#FF9900">
<%

String name=(String)session.getAttribute("aa");
System.out.println("fname"+name);

String em=(String)session.getAttribute("bb");
System.out.println("Email is"+em);

String a=null;

Blob b=null;

try
{
	

Connection con = databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("Select AES_DECRYPT(filedata,'key')from cloud");
ResultSet rs=ps.executeQuery();
while(rs.next())
{

b = rs.getBlob("AES_DECRYPT(filedata,'key')");
}
String filename ="clouddatabase";
filename+=".doc";
byte[] ba = b.getBytes(1, (int)b.length());
response.setContentType("application/msword");
System.out.println(a);
//response.setHeader("Content-Disposition","attachment; filename=\""+a+"\"");
OutputStream os = response.getOutputStream();
os.write(ba);
os.close();
ba = null;

//response.sendRedirect("login.jsp?message=success");

}
catch(Exception e)
{
out.println("<h1> Enter Correct File Decryption Key and File Meta Key</h1>");
}
%>
</body>
</html>