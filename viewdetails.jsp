<html>
<%@ page import="java.util.Date"%>
<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>View Details</title>
<script type="text/javascript" src="date_time.js"></script>

<link rel="stylesheet" type="text/css" href="css/demo.css" />
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
<font color="red" size="3px">
            <span id="date_time"></span>
            <script type="text/javascript">window.onload = date_time('date_time');</script>

<h1 id="title"><b>Highly Confidential Security System</b></h1>
    <h2 id="title1">Stay Secured Stay Assured</h2>
    <footer>
            <h3>&copy;2013 All Rights Reserved. Developed by AMISTOSOO</h3>
    </footer>

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber1" height="218">
  <tr>
    <td width="12%" height="74">&nbsp;</td>
    <td width="22%" height="74">
    <img border="0" src="images/header_02_sec.jpg" width="261" height="74"></td>
    
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
    
   
    <b><a href="gizmos.htm" style="text-decoration: none" target="_self"><font color="#FFFFFF">Gizmo's</font></a></font></b></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 <b><a href="logout.jsp" style="text-decoration: none" target="_self"><font color="#FFFFFF">Logout</font></a></font></b></font>
	
	
	</td>
  </tr>
 

   <tr>

  <td colspan="3">
   <center><font  size="+2"><strong>Gizmos Number</strong></font></center>
  
  </td>
  </tr>
   <tr><td colspan="3">
   
    <center><br>
    
   <table border="1">
   
   <script language="javascript" type="text/javascript" src="datetimepicker.js"></script>
  <form name="f1" action="success.jsp" method="post" target="_self">
  
   <tr>
   <td><font color="#330099"><b>Enter Lock No:</b></font></td><td>:</td><td><input type="text" name="t1"></td></tr>

  
  <tr><td colspan="3"><center><input type="submit" value="View">
  </form>
  <form name="f2" action="success1.jsp" method="post" target="_self">
  <input type="Submit" value="Add"></center></td></tr>
  
  </form>
   </table>
  </center>
  </td>
  
  </tr>

</table>

</body>

</html>