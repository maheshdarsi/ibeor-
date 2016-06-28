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
            <li><a href="login.jsp">HOME</a></li>
            <li><a href="upload.jsp">FILEUPLOAD</a></li>
			<li><a href="uploadview.jsp">VIEWFILE</a></li>
			<li><a href="upload1.jsp">BACK</a></li>
          
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
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/images.jpg"></p>
        </div>
            
          
        </div>
    
    	<div class="right_content">
		   
        	<div class="title"><h2>Encrypt Key Generation</h2></div>
          
            <%
	
	  
     	int x=(int)(Math.random()*100000);
 	 String fkey=Integer.toString(x);
	 session.setAttribute("fkey",fkey);
 	System.out.println("file key auto"+fkey);

 	int y=(int)(Math.random()*100);
 	 String fkey1=Integer.toString(y);
 	session.setAttribute("fkey1",fkey1);


			
			
			
			int n=0,s=0;
			Connection con=null;
			ResultSet rs=null;
			Statement st=null;
			String sql="select max(fileid) from cloud2";
			try
			{
			con=databasecon.getconnection();
			st=con.createStatement();
			rs=st.executeQuery(sql);
			if(rs.next())
			{
			if(rs.getInt(1)==0)
			n=1;
			else
			n=rs.getInt(1)+1;
						}
						String fid=Integer.toString(n);
						session.setAttribute("n",fid);
			System.out.println("file auto id"+n);
			%>
           
              <FORM METHOD="POST"  action="upload2.jsp" name="f2"  onsubmit="return filed()">
          <table width="317" height="232" align="center" cellspacing="8">
        
          
          <tr><td align="right"> <label id="g">File Id :</label><input name="fid" type="text" maxlength="10" class="backtotop" value="<%=n%>"/></td></tr>
          <tr><td align="right"> <label id="g">File Name :</label><input type="text" name="fnamenew" maxlength="30" /></td></tr>
          <tr><td align="right"> <label id="g">File Encrypt Key:</label><input name="fkey" type="text" class="backtotop" maxlength="10" value="<%=fkey%>"/></td></tr>
	<tr><td height="53" align="center">

	<input type="image" src="images/images.png" alt="Submit" width="60" height="48"></td></tr>
	</table>
	</FORM>
			  <%
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
	  finally
	{
		con.close();
		st.close();
	}
 
	%>

            
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
