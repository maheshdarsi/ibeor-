<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@page import="org.apache.commons.lang.RandomStringUtils.*,com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  %>
<%@page import=" java.security.MessageDigest"%>
<%@page import="java.util.Random"%>

<html>
<head>
  <%
   String file = request.getParameter("userdata");
   System.out.println("user file"+file);
   
   String name=(String)session.getAttribute("aa");
	System.out.println("fname"+name);

	String em=(String)session.getAttribute("bb");
	System.out.println("Email is"+em);
	
  %>
<title>Identity-based Encryption</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
<div class="wrap">
	<div class="header">
    
    </div>
    
        <div id="menu" >
            <ul>                                                                       
           <li><a href="index.html">HOME</a></li>
			  <li><a href="admin2.jsp">CHECKADMINDATABASE</a></li>
			   <li><a href="admin3.jsp">CHECKKEY</a></li>
			 <li><a href="admin.jsp">LOGOUT</a></li>
          
            </ul>
        </div> 
    
    <div class="tab_bg">
    
            
        
    <div class="tab_left"><p>&nbsp;</p> <h1 align="center">IDENTITY-BASED ENCRYPTION WITH OUTSOURCED REVOCATION IN CLOUD COMPUTING</h1></div>
    	<div class="clear"></div>
    </div>
    
   <div class="center_content">
    	<div class="left_content">
        	<div class="title" align="center">
      
        <p>&nbsp;</p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/images.jpg"></p>
        </div>
            
          
        </div>
    
    	<div class="right_content">
		   
        	<div class="title"><h2>PRIVATE KEY VERIFY SUCCESSFULLY</h2></div>
          
            <%
	
	  
     	int x=(int)(Math.random()*100000);
 	 String fkey=Integer.toString(x);
	 session.setAttribute("fkey",fkey);
 	System.out.println("file key auto"+fkey);

			%>
              
        <p><a href="cloudkeystore.jsp"><h2>CLICK CLOUD KEY SENDED</h2></p></a>

	</table>
	</FORM>
			
            
        </div>
        
        <div class="clear"></div>   
    </div>
    
     <div id="footer">
     <div class="tab_fooder">
	 </div>
        
     	
  </div> 



	</div>
	</body>
	</html>
