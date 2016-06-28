<html>
<head>
<title>Identity-based Encryption</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<script language="JavaScript" type="text/javascript">
function validation()
{
var a=document.f.fname.value;
if(a=="")
{
alert("Enter Your Firstname");
document.f.fname.focus();
return false;
}

var c=document.f.lname.value;
if(c=="")
{
alert("Enter Your Lastname");
document.f.lname.focus();
return false;
}
var e=document.f.email.value;
if(e=="")
{
alert("Enter the vaild email id");
document.f.email.focus();
return false;
}
if(e.indexOf("@",0)<0)
{
alert("email must use @ symbol");
document.f.email.focus();
return false;
}
if(e.indexOf(".",0)<0)
{
alert("emial must use ( . ) symbol");
document.f.email.focus();
return false;
}
var f=document.f.mno.value;
if(f=="")
{
alert("Enter Your Mobile No");
document.f.mno.focus();
return false;
}

var g=document.f.city.value;
if(g=="")
{
alert("Enter Your City Name");
document.f.city.focus();
return false;
}

var h=document.f.country.value;
if(h=="")
{
alert("Enter Your Country Name");
document.f.country.focus();
return false;
}

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
            <li><a href="login.jsp">CLIENT</a></li>
            <li><a href="login.jsp">BACK</a></li>
          
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
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p><img src="images/encryption.jpg"></p>
      </div>
        </div>
    	<div class="right_content">
        	<div class="title"><h2>USER REGISTRATION</h2></div>
            
            <form action="reg.jsp" name="f" method="post" onClick="return validation();">
            <table width="367" height="348"  background="images/images (1).jpg">
			<tr><td>FIRSTNAME: </td><td><input type="text" name="fname"/></td></tr>
		    &nbsp;
			<tr><td>LASTNAME: </td><td><input type="text" name="lname"></td></tr>
			&nbsp;
			<tr><td>EMAILID: </td><td><input type="email" name="email"/></td></tr>
		    &nbsp;
			<tr><td>MOBILE NO: </td><td><input type="text" name="mno"></td></tr>
			&nbsp;
			<tr><td>CITY: </td><td><input type="text" name="city"/></td></tr>
		    &nbsp;
			<tr><td>COUNTRY: </td><td><input type="text" name="country"></td></tr>
			&nbsp;
			<tr><td>USERNAME: </td><td><input type="text" name="uname"/></td></tr>
		    &nbsp;
			<tr><td>PASSWORD: </td><td><input type="password" name="pass"></td></tr>
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
