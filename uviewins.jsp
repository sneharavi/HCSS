<html>
<%@ page import="java.util.*"%>
<%@ include file="DBConn.jsp"%>
<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Highly Confidential Security System</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<base target="main">

</head>

<body>

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber1" height="218">
  <tr>
    <td width="12%" height="74">&nbsp;</td>
    <td width="22%" height="74">
    <img border="0" src="images/header_02_sec.jpg" width="261" height="74"></td>
    <td width="41%" height="74"><font size="5"><b>Highly Confidential 
    Security System</b></font></td>
  </tr>
  <tr>
    <td width="12%" height="112">
    <img border="0" src="images/header_04_sec.jpg" width="150" height="112"></td>
    <td width="22%" height="112">
    <img border="0" src="images/header_05_sec.jpg" width="273" height="112"></td>
    <td width="41%" height="112">
    <img border="0" src="images/header_06_sec.jpg" width="368" height="112"></td>
  </tr>
  <tr>
  <td colspan="3">
  
  <%
     try
	 {
	   int accno=Integer.parseInt(request.getParameter("t1"));
	   String name=request.getParameter("t2");
	   String password=request.getParameter("t3");
	   String Dob=request.getParameter("t4");
	   String address=request.getParameter("t5");
	   String acctype=request.getParameter("t6");
	   String rname=request.getParameter("t7");
	   String raddress=request.getParameter("t8");
	   int balance=Integer.parseInt(request.getParameter("t9"));
	   String connumber=request.getParameter("t10");
	   String doc=request.getParameter("t11");

	   int i=stmt.executeUpdate("update newacc set uname='"+name+"',password='"+password+"',Dob='"+address+"',connumber='"+connumber+"' where accno="+accno);
     if(i>0)
		 {
		 out.println("<center><B>Ur profile is successfully Updated......<br>");
		 out.println("<a href=umenu.jsp>Back</a></b></center>");
     }

  else
	  out.println("Error");
	 }
	 catch(Exception ex)
	 {
		 out.println(ex);
	 }
  %>
  </td>
  </tr>


</table>

</body>

</html>