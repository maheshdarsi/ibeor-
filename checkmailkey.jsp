<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

<html>
<head>
<%

String em=(String)session.getAttribute("bb");
System.out.println("Email id is"+em);
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
            <li><a href="pkgdbshow.jsp">PKG DB</a></li>
			  <li><a href="#">CHECKPKGDATABASE</a></li>
			 <li><a href="pkg.jsp">LOGOUT</a></li>
          
            </ul>
        </div> 
    
    	<div class="tab_bg">
    
            
        
   		 <div class="tab_left"><p>&nbsp;</p> <h1 align="center">IDENTITY-BASED ENCRYPTION WITH OUTSOURCED REVOCATION IN CLOUD COMPUTING</h1></div>
    	<div class="clear"></div>
  
	 <table width="800px"align="center" >

 	<tr bgcolor="#FF9900"> 
 
 
 	 <h1 align="center">&nbsp;</h1>
 	 <h2 align="center">VIEW PRIVATE KEY GENERATOR DATABASE</h2>

	<th align="center"height="41"><font id="logo">FILE ID</font></th>
	<th align="center"height="41"><font id="logo">FILE KEY</font></th>
	<th align="center"height="41"><font id="logo"> ENCRYPTION DATA</font></th>
	<th align="center"height="41"><font id="logo">GMAILKEY</font></th>


	</tr>

      <%
	  
	  	int x=(int)(Math.random()*100000);
 	 String accesskey=Integer.toString(x);
	 session.setAttribute("accesskey",accesskey);
 	System.out.println("file key "+accesskey);
	  
	  
	   Connection con=null;
	PreparedStatement psmt=null;
	ResultSet rs=null;
	String a=null;

	try{
	con=databasecon.getconnection();
	psmt=con.prepareStatement("select * from cloud");
	rs=psmt.executeQuery();
	%>
	<%

	while(rs.next())
	{
	%><tr>
 	 <td align="center"height="41"><strong><font  id="logo"><%=rs.getString("id")%></font></strong></td>
  	  	<td align="center"height="41"><strong><font  id="logo"><%=rs.getString("filekey")%></font></strong></td>
 	 <td align="center"height="41"><strong><font  id="logo"><%=rs.getString("filedata")%></font></strong></td>
	<td align="center"height="41"><strong><font  id="logo"><%=rs.getString("gmail")%></font></strong></td>
   
     <%}%>
    </tr>
 	 </table>


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
