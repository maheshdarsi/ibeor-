<%@page import="java.util.Random"%>
<html>
<head>
<title>Identity-based Encryption</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<%
String z=request.getParameter("fileid");
System.out.println("file id is"+z);
%>
</head>
<body>

  
    
   <div class="center_content">
    
        
			 <%
	
	  
     	int x=(int)(Math.random()*100000);
 	 String fkey2=Integer.toString(x);
	 session.setAttribute("fkey",fkey2);
 	System.out.println("file key auto"+fkey2);
	%>
        <p>&nbsp;</p>
        <h2>Encrypted key is:  <%=fkey2%></h2>
     
</body>
</html>
