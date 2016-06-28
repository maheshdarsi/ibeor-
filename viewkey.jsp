<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

<html>
<head>
<%
 //String name=(String)session.getAttribute("aa");
//System.out.println("fname"+name);
String name=request.getParameter("hh");
session.setAttribute("name",name);
System.out.println("filename is"+name);
	
String em=(String)session.getAttribute("bb");
System.out.println("Email id is"+em);
%>
<title>Identity-based Encryption</title>
<link rel="stylesheet" type="text/css" href="style.css" />

</head>
<body>
	  
	 
 	 <h1 align="center">&nbsp;</h1>
 	   <font id="logo">File key is </font>

      <%
	  
	   Connection con=null;
	PreparedStatement psmt=null;
	ResultSet rs=null;
	String a=null;

	try{
	con=databasecon.getconnection();
	psmt=con.prepareStatement("select * from cloud where filename='"+name+"'");
	rs=psmt.executeQuery();
	%>
	<%

	while(rs.next())
	{
	%>
 	<strong><font  id="logo"><%=rs.getString("accesskey")%></font></strong>
  	 
   
     <%}%>
   


    <%
	}
	catch(Exception ex)
	{
	out.println("Error in connection : "+ex);
	}
	%>
        
    

     <div id="footer">
     
     </div>   
	 </div>
	</body>
	</html>
