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
 <center>
   <table border="1">
   
    <form name="f1" action="viewins.jsp" method="post">
   <tr>
   <%
      try
	  {
		 int accno=Integer.parseInt(request.getParameter("t1"));
		  rs=stmt.executeQuery("select * from newacc where accno="+accno);
		  if(rs.next())
		  {%>
	  <td><font color="#0033FF"><b>UR Account Number</b></font></td><td>:</td><td><input type="text" name="t1"  value="<%=rs.getString(1)%>" readonly></td></tr>
   <tr> <td><font color="#0033FF"><b>Ur Name<b></font></td><td>:</td><td><input type="text" name="t2" value="<%=rs.getString(2)%>" readonly></td> </tr>
	<tr><td><font color="#0033FF"><b>Ur Password</b></font></td><td>:</td><td><input type="password" id="demo1" name="t3" value="<%=rs.getString(3)%>" readonly></td></tr>
	<tr><td><font color="#0033FF"><b>Ur Date Of Birth</b></font></td><td>:</td><td><input type="text" name="t4" value="<%=rs.getString(4)%>"readonly></td></tr>
	<tr><td><font color="#0033FF"><b>Ur Address</b></font></td><td>:</td><td>
	<input type="text" name="t5" value="<%=rs.getString(5)%>">
	</td>
   </tr>
   <tr><td><font color="#0033FF"><b>Ur Account Type</b></font></td><td>:</td><td>
	<input type="text" name="t6" value="<%=rs.getString(6)%>">
	</td>
   </tr>
   <tr><td><font color="#0033FF"><b>Refered By</b></font></td><td>:</td><td><input type="text" name="t7" value="<%=rs.getString(7)%>"></td></tr>
   <tr><td><font color="#0033FF"><b>Address of The Referance</b></font></td><td>:</td><td><input type="text" name="t8" value="<%=rs.getString(8)%>"></td></tr>
    <tr>
   <td><font color="#0033FF"><b>Ur Balance</b></font></td><td>:</td><td><input type="text" name="t9" value="<%=rs.getString(9)%>"></td></tr>
    <tr>
   <td><font color="#0033FF"><b>Ur Contact Number</b></font></td><td>:</td><td><input type="text" name="t10" value="<%=rs.getString(10)%>"></td></tr>
    <tr>
   <td><font color="#0033FF"><b>Date Of Creration</b></font></td><td>:</td><td><input type="text" name="t11" value="<%=rs.getString(11)%>"></td></tr>
   <tr><td colspan="3"><center><input type="submit" value="Save">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="Clear"></center></td></tr>


 <%		  }
	  }
	  catch(Exception ex)
	  {
		 out.println(ex);
	  }
   %>
      </table>
 </center>
  </td>
  </tr>


</table>

</body>

</html>