
<html>
<body bgcolor="#FF9900">
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>
<%
	 
        String uname=request.getParameter("uname");
	 String pass=request.getParameter("pass");
        
	    
		
		
         
	    try{
			
	     Connection con = databasecon.getconnection();
         PreparedStatement ps=con.prepareStatement("select  fname,email,mno from reg where uname='"+uname+"' and pass='"+pass+"'");
	     ResultSet rs=ps.executeQuery();
		 if(rs.next())
		 { 
		 String l=rs.getString("fname");
		 session.setAttribute("aa",l);
		 System.out.println("filename"+l);
		 
		String em=rs.getString("email");
		 session.setAttribute("bb",em);
		 System.out.println("lname"+em);
				
		 	 
	     response.sendRedirect("upload.jsp");
		 System.out.println(uname);
		
		 }
		
		

	}
	catch(Exception e2){
		out.println(e2.getMessage());
	}
	
	
%>
</body>
</html>