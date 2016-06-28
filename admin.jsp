<html>
<head>
<title>Identity-based Encryption</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<script language="JavaScript" type="text/javascript">
function validation()
{
var d=document.f.uname.value;
if(d=="")
{
alert("Enter Your Username");
document.f.uname.focus();
return false;
}
var b=document.f.pass.value;
if(b==""){
alert("Enter Your Password");
document.f.pass.focus();
return false;
}
}
</script>
</head>
<body>
<div class="wrap">
	<div class="header">
    
    </div>
    
        <div id="menu" >
            <ul>                                                                       
            <li><a href="index.html">HOME</a></li>
            <li><a href="admin.jsp">CLOUD</a></li>
			 <li><a href="index.html">BACK</a></li>
          
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
        <p><img src="images/images (2).jpg" width="236" height="161"></p>
      </div>
            
          
        </div>
    
    	<div class="right_content">
        	<div class="title"><h2>CLOUD DATABASE</h2></div>
            
            <form action="admincheck.jsp" name="f" method="post" onClick="return validation();">
            <table width="301" height="140"  background="images/images.jpg">
			<tr><td bgcolor="#808080">USERNAME: </td><td><input type="text" name="uname"/></td></tr>
		&nbsp;
			<tr><td bgcolor="#808080">PASSWORD: </td><td><input type="password" name="pass"></td></tr>
			&nbsp;
			<tr><td></td><td><input type="submit" value="LOGIN">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="RESET"></td></tr>
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
