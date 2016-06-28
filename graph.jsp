<%@ page import="java.util.*"%>
<%@ page import="java.util.date.*"%>
<%@ page import="java.util.time.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>

<html>
<head>
<title>Identity-based Encryption</title>
<link rel="stylesheet" type="text/css" href="style.css" />
 <script type="text/javascript" src="canvasjs.min.js"></script>

<%
String java="java";
 try

        {

	Connection con=databasecon.getconnection();

	Statement st=con.createStatement();

	String sql="select count(filename) from cloud ";

	ResultSet rs=st.executeQuery(sql);

	while(rs.next())
	
	{ 
	int af=rs.getInt(1);
	   System.out.println("id is"+af);
	   
	     
	%>
	
	<script type="text/javascript">

window.onload = function () {
	var chart = new CanvasJS.Chart("chartContainer", {
		theme: "theme2",//theme1
		title:{
			text: "KEY GENERATOR GRAPH"              
		},
		animationEnabled: false,   // change to true
		data: [              
		{
			// Change type to "bar", "splineArea", "area", "spline", "pie",etc.
			type: "column",
			dataPoints: [
				{ label: "Private key",  y:<%=af%>},
				//{ label: "DOTNET", y: 14 },
				//{ label: "Php", y:30 },
				//{ label: "mango",  y: 25  },
				//{ label: "grape",  y: 28  }
			]
		}
		]
	});
	chart.render();
}
</script>
<% }
  }
  

catch(Exception e)
{
out.println(e);
}
%>


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
       <div id="chartContainer" style="height: 300px; width: 100%;"></div>
      </div>
            
          
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
