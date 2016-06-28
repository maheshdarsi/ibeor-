<html>
<head>
<title>Identity-based Encryption</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<script language="JavaScript" type="text/javascript">
function validation()
{
var d=document.f.key1.value;
if(d=="")
{
alert("Enter Your Private key");
document.f.key1.focus();
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
            <li><a href="view.jsp">DATAVIEW</a></li>
			 <li><a href="download.jsp">BACK</a></li>
          
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
        	<div class="title"><h2>Private key </h2></div>

<form action="privatekeycheck.jsp" name="f" method="post" onClick="return validation();">
  <table width="209">
    <tr>
      <td>Enter Private Key: </td>
      <td><input type="text" name="accesskey"/></td>
    </tr>
    <tr>
      <td></td>
      <td><input name="submit" type="submit" value="LOGIN"> </td>
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
