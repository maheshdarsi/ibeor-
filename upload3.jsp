<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

<html>
<head>
<title>Identity-based Encryption</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<%
String fileid=(String)session.getAttribute("n");
System.out.println("file id :"+fileid);

String c=(String)session.getAttribute("aa");
System.out.println("filename:"+c);

String name=(String)session.getAttribute("aa");
System.out.println("fname"+name);

String em=(String)session.getAttribute("bb");
System.out.println("fname"+em);

%>
</head>
<body>
	<div class="wrap">
	<div class="header">
    
    </div>
    
        <div id="menu" >
            <ul>                                                                       
            <li><a href="index.html">HOME</a></li>
            <li><a href="upload3.jsp">USERDATABASE</a></li>
			 <li><a href="index.html">LOGOUT</a></li>
          
            </ul>
        </div> 
    
    	<div class="tab_bg">
    
            
        
   		 <div class="tab_left"><p>&nbsp;</p> <h1 align="center">IDENTITY-BASED ENCRYPTION WITH OUTSOURCED REVOCATION IN CLOUD COMPUTING</h1></div>
    	<div class="clear"></div>
  
	 <table width="800px"align="center" >

 	<tr bgcolor="#FF9900"> 
 
 
 	 <h1 align="center">&nbsp;</h1>
 	 <h2 align="center">VIEW CLIENTDATABASE</h2>

	<th align="center"height="41"><font id="logo">FILE ID</font></th>
	<th align="center"height="41"><font id="logo">FILE NAME </font></th>
	<th align="center"height="41"><font id="logo">FILE KEY</font></th>
	<th align="center"height="41"><font id="logo">STATUS</font></th>
	<th align="center"height="41"><font id="logo">REQUEST PKG</font></th>



	</tr>

      <% 

	try{
	Connection con=databasecon.getconnection();

	Statement st=con.createStatement();

	String sql="select * from cloud where filename='"+c+"'";

	ResultSet rs=st.executeQuery(sql);

	while(rs.next())
	{
	%><tr>
 	 <td align="center"height="41"><strong><font  id="logo"><%=rs.getString("id")%></font></strong></td>
  	 <td align="center"height="41"><strong><font  id="logo"><%=rs.getString("filename")%></font></strong></td>
  	<td align="center"height="41"><strong><font  id="logo"><%=rs.getString("filekey")%></font></strong></td>
		<td align="center"height="41"><strong><font  id="logo"><%=rs.getString("Request")%></font></strong></td>
		<td align="center"><a href="upload4.jsp?fileid=<%=rs.getString("id")%>"><input type="image" src="images/upload.png"></a></td>
   
   
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
