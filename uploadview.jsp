<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<% String b=(String)session.getAttribute("Firstname");%>
<%@ page import="java.net.*,java.io.*"%>
<%
String name=(String)session.getAttribute("aa");
System.out.println("fname"+name);
String em=(String)session.getAttribute("bb");
System.out.println("fname"+em);
%>
<%!
   String fileOutput;
%>
<%
   String file = request.getParameter("userdata");
   
   System.out.println("User file"+file);
   String p=request.getRealPath("/");
    String pa=p+"files\\"+file;
   session.setAttribute("filen",pa);
   if (file != null) {
      //URL url = new URL("file:///D:/apache-tomcat-6.0.18/webapps/Identity-based/files/" + file);
      URL url = new URL("file:///D:/apache-tomcat-7.0.67/webapps/IBEOR/files/" + file);
	  System.out.println(url);
      URLConnection conn = url.openConnection();
      StringBuffer buffer = new StringBuffer();
      BufferedReader input = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	  System.out.println("input"+input);
      String str = "";
      while ((str = input.readLine()) != null ) {
         buffer.append(str).append("\n");
      }
      fileOutput = buffer.toString();
   }
%>

<html>
<head>
<title>Identity-based Encryption</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<!--<script language="JavaScript" type="text/javascript">
function validation()
{
var d=document.f.userdata.value;
if(d=="")
{
alert("Choose your file");
document.f.userdata.focus();
return false;
}

}
</script>-->
</head>
<body>
<div class="wrap">
	<div class="header">
    
    </div>
    
        <div id="menu" >
            <ul>                                                                       
           <li><a href="login.jsp">HOME</a></li>
            <li><a href="upload.jsp">FILEUPLOAD</a></li>
			<li><a href="#">VIEWFILE</a></li>
			<li><a href="upload.jsp">BACK</a></li>
          
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
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p><img src="images/images.jpg"></p>
        </div>
            
          
        </div>
    
    	<div class="right_content">
		   
        	<div class="title"><h2>USER VIEW DATA</h2></div>
          
            <form action="upload1.jsp" name="f" method="post" onClick="return validation();">
            <table width="394" height="261" bgcolor="#408080">
			
		
			<tr><td><h2>USERDATA:</h2></td><td>
<textarea name="xmlDocument" cols="25" rows="7" readonly="readonly" WRAP="off"><%= (fileOutput != null) ? fileOutput : "" %></textareA>
</td></tr>
<tr><td></td><td><input type="image" src="images/images.png" width="100" height="50"></td></tr>
			</table>
				</form>
            
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
