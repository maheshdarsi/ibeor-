<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>
<body>

<%
 String c=(String)session.getAttribute("filen");
System.out.println("file::"+c);

String name=(String)session.getAttribute("aa");
System.out.println("fname"+name);

String em=(String)session.getAttribute("bb");
System.out.println("Email is"+em);

String fileid=(String)session.getAttribute("n");
System.out.println("file id :"+fileid);
String fname = request.getParameter("fnamenew");
session.setAttribute("aa",fname);
System.out.println("file name:"+fname);
String filekey = (String)session.getAttribute("fkey");
System.out.println("file key:"+filekey);
String cloudid="CLOUDCS79";
String Request="Request";

FileInputStream fis=null;
File image=new File(c);

FileInputStream fin=new FileInputStream(image);

Connection con=null,con1=null,con2=null;
PreparedStatement psmt=null,psmt1=null,psmt2=null;

try{
con=databasecon.getconnection();
psmt=con.prepareStatement("insert into cloud(filename,filekey,filedata,Request) values(?,AES_ENCRYPT(?, 'key'),AES_ENCRYPT(?, 'key'),?)");
psmt.setString(1,fname);
psmt.setString(2,filekey);
fis=new FileInputStream(image);
psmt.setBinaryStream(3, (InputStream)fis, (int)(image.length()));
psmt.setString(4,Request);

psmt.executeUpdate();
}
catch(Exception ex)
{
out.println("Error in connection : "+ex);
}
try{
con1=databasecon.getconnection();
psmt1=con.prepareStatement("insert into cloud1(fileid,file,filekey) values(?,AES_ENCRYPT(?, 'key'),?)");

psmt1.setString(1,fileid);
fis=new FileInputStream(image);
psmt1.setBinaryStream(2, (InputStream)fis, (int)(image.length()));
psmt1.setString(3,filekey);

psmt1.executeUpdate();
}
catch(Exception ex)
{
out.println("Error in connection : "+ex);
}
try{
con2=databasecon.getconnection();
psmt2=con.prepareStatement("insert into cloud2(FILEID,FILENAME,CLOUDID,FILEKEY) values(?,AES_ENCRYPT(?, 'key'),?,AES_ENCRYPT(?, 'key'))");
psmt2.setString(1,fileid);
psmt2.setString(2,fname);
psmt2.setString(3,cloudid);
psmt2.setString(4,filekey);

psmt2.executeUpdate();
}
catch(Exception ex)
{
out.println("Error in connection : "+ex);
}
response.sendRedirect("sucess.jsp?message=success"); 
%>





</body>
</html>