<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

<%
	 
        String key=request.getParameter("accesskey");
		
	        
	    try{
			
	     Connection con = databasecon.getconnection();
         PreparedStatement ps=con.prepareStatement("select * from cloud where accesskey='"+key+"'");
	     ResultSet rs=ps.executeQuery();
		 if(rs.next())
		 { 
		 //String l=rs.getString("fname");
		 //session.setAttribute("aa",l);
		// System.out.println("filename"+l);
		 
		//String em=rs.getString("email");
		// session.setAttribute("bb",em);
		// System.out.println("lname"+em);
				
		 	 
	     response.sendRedirect("match.jsp");
		 System.out.println(key);
		
		 }
		 else
		 {
		  response.sendRedirect("error.jsp");
		 out.println("Enter Your correct private key");
		}
		

	}
	catch(Exception e2){
		out.println(e2.getMessage());
	}
	
	
%>
</body>
</html>