<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%
String name=(String)session.getAttribute("aa");
System.out.println("fname"+name);

String em=(String)session.getAttribute("bb");
System.out.println("Email is"+em);
%>
<html>
<head>
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
            <li><a href="#">VIEWDATA</a></li>
			 <li><a href="download.jsp">DOWNLOADDATA</a></li>
			 <li><a href="login.jsp">LOGOUT</a></li>
          
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
        <p><img src="images/encryption1.jpg" width="236" height="161"></p>
      </div>
            
          
        </div>
    
    	<div class="right_content">

<%
Connection con=null;
PreparedStatement psmt=null;
ResultSet rs=null;
Blob file1=null;
String a=null;
String data1=null;

try{
con=databasecon.getconnection();
psmt=con.prepareStatement("select filename,AES_DECRYPT(filedata,'key') from cloud");
rs=psmt.executeQuery();
while(rs.next())
{
a=rs.getString(1);
file1 = rs.getBlob(2);

}
byte[] bdata = file1.getBytes(1, (int)file1.length());
data1 = new String(bdata);
System.out.println("sssssss"+a);
%>
        	<div class="title"><h2>VIEW ORGINAL DATA</h2></div>
            <table>
			  <tr><td align="right"> <label id="g">File Name:</label><input name="fid" type="text" maxlength="10" class="backtotop" value="<%=a%>"/></td></tr>
	          <tr><td align="right">USERFILE<textarea name="text" cols="20" rows="10" readonly maxlength="30" ><%=data1%></textarea></td></tr>

			</table>
           
            <%
}
catch(Exception ex)
{
out.println("Error in connection : "+ex);
}
%>
  <div class="clear"></div>   
    </div>
    
     <div id="footer">
     <div class="tab_fooder">
	 </div>
        
     	
  </div> 



</div>
      
</body>
</html>
