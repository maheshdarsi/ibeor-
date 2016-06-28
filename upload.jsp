<html>
<head>
<%
String name=(String)session.getAttribute("aa");
System.out.println("fname"+name);

String em=(String)session.getAttribute("bb");
System.out.println("Email is"+em);
%>
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
			<li><a href="download.jsp">DOWNLOAD</a></li>
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
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p><img src="images/images.jpg"></p>
        </div>
            
          
        </div>
    
    	<div class="right_content">
		   
        	<div class="title"><h2>CLIENT DATA UPLOAD</h2></div>
          
            <form action="uploadview.jsp" name="f" method="post" onClick="return validation();">
            <table width="330" height="126" border="3" bgcolor="#808040">
			
		
			<tr><td>USERDATA: </td><td><p> <p>&nbsp;</p>
                <input type="file" name="userdata">
              </p>
              <p>&nbsp;</p></td></tr>
			&nbsp;
			<tr><td></td><td><input type="image" src="images/upload-button-hi.png" alt="submit" width="110" height="50">
             </td>
          </tr>
			
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
