<html>
<%@ page import="java.util.Date"%>
<head>
<title>Transaction Details</title>
<script type="text/javascript" src="date_time.js"></script>
<link rel="stylesheet" type="text/css" href="css/demo.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<base target="main">
</head>


<body>
<font color="red" size="3px">
            <span id="date_time"></span>
            <script type="text/javascript">window.onload = date_time('date_time');</script>


<h1 id="title"><b>Highly Confidential Security System</b></h1>
    <h2 id="title1">Stay Secured Stay Assured</h2>
    

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
    <font color="#FFFFFF"><b><a href="logout.jsp" target="_top" style="text-decoration: none">
    <font color="#FFFFFF">Logout</font></a></b></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font color="#336699"><b>
   
 
<%@ include file="DBConn.jsp"%>
   <tr>

  <td colspan="3">
   <center><font size="+2"><strong>All Login Registration Details</strong></font></center>
  
  </td>
  </tr>
   <tr><td colspan="3">
    <center><br>
   <table border="2" cellspacing="4" cellpading="6">
    <tr><th><font color="#330099">Username</th>
    <th><font color="#330099">Password</th>
    <th><font color="#330099">E-mail ID</th><th><font color="#330099">Alternative Mail</th><th><font color="#330099">Date Of Birth</th><th><font color="#330099">Residential Address</th><th><font color="#330099">Official Address</th><th><font color="#330099">Contact Number</th>
    <th><font color="#330099">Date Of Creation</th>
    
 <%
   try
   {
	   rs=stmt.executeQuery("select * from uva.signup");
	   while(rs.next())
	   {%>
  <tr><td><%=rs.getString(2)%></td>
  <td><%=rs.getString(3)%></td>  
  <td><%=rs.getString(4)%></td>
  <td><%=rs.getString(5)%></td>
  <td><%=rs.getString(6)%></td>
  <td><%=rs.getString(7)%></td>
  <td><%=rs.getString(8)%></td>
  <td><%=rs.getString(9)%></td>
  <td><%=rs.getString(10)%></td>
  </tr>
	<%   
	}

   }
   catch(Exception ex)
   {
	   System.out.println(ex);
   }
 %>

   </table>
  </center>
  </td>  
  </tr>
</table>
</body>
</html>