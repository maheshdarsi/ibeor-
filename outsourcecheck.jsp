
<html>
<body bgcolor="#FF9900">
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>
<%
	 
        String key=request.getParameter("accesskey");
		 String key1=request.getParameter("cloudkey");
	        
	    try{
			
	     Connection con = databasecon.getconnection();
         PreparedStatement ps=con.prepareStatement("select * from cloud where accesskey='"+key+"' and cloudkey='"+key1+"'");
	     ResultSet rs=ps.executeQuery();
		 if(rs.next())
		 { 
		 //String l=rs.getString("fname");
		 //session.setAttribute("aa",l);
		// System.out.println("filename"+l);
		 
		//String em=rs.getString("email");
		// session.setAttribute("bb",em);
		// System.out.println("lname"+em);
				
		 	 
	     response.sendRedirect("match1.jsp");
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