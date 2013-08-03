<html>
<%@ page import="java.util.Date"%>
<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Highly Confidential Security System/title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<base target="main">

</head>
<%
  Date d=null;
   d=new Date();
		int dd=d.getDate();
		int mm=d.getMonth()+1;
		int yy=d.getYear()+1900;
		int hh=d.getHours();
		int min=d.getMinutes();
		int sec=d.getSeconds();
		String date=dd+"-"+mm+"-"+yy+":"+hh+":"+min+":"+sec;
%>

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
   <td width="100%" colspan="3" background="images/mbg.gif" height="30">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <font color="#FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </font><a style="text-decoration: none" href="udeposit.jsp" target="_top">
    <font color="#FFFFFF"><b>Deposit</b></font></a><font color="#FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a style="text-decoration: none" target="main" href="uwithdraw.jsp">
    <font color="#FFFFFF"><b>Withdraw</b></font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <b><a href="uviewdetails.jsp" style="text-decoration: none"><font color="#FFFFFF">View Details</font></a></font></b></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 <b><a href="logout.jsp" style="text-decoration: none"><font color="#FFFFFF">Logout</font></a></font></b></font>
	
	
	</td>
  </tr>
 

   <tr>

  <td colspan="3">
   <center><font color="#0033FF" size="+2"><strong>View The Details</strong></font></center>
  
  </td>
  </tr>
   <tr><td colspan="3">
    <center><br>
   <table border="1">
     <%
    String name=(String)session.getAttribute("NAME");
	String acno=(String)session.getAttribute("ACCNO");
	int accno=Integer.parseInt(acno);
  %>
   <script language="javascript" type="text/javascript" src="datetimepicker.js"></script>
  <form name="f1" action="uview.jsp" method="post">
   <tr>
   <td><font color="#0033FF"><b>Enter Ur Account Number</b></font></td><td>:</td><td><input type="text" name="t1" value="<%=accno%>" readonly></td></tr>
  <tr><td colspan="3"><center><input type="submit" value="Add">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="Clear"></center></td></tr>

   </table>
  </center>
  </td>
  
  </tr>

</table>

</body>

</html>