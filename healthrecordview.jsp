<%@ include file="DBConn.jsp"%>
<%@ page import="java.util.Date"%>
<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Health Record Details</title>
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
     <b>
    <font color="#FFFFFF">&nbsp;
    </font>
    
    <a style="text-decoration: none" href="creditcardview.jsp" target="_self">
    <font color="#FFFFFF">Credit Card</font></a><font color="#FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a style="text-decoration: none" target="_self" href="pancardview.jsp" >
    <font color="#FFFFFF">PAN Card</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <a style="text-decoration: none" target="_self" href="aadhaarview.jsp" >
    <font color="#FFFFFF">Aadhaar Card</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a style="text-decoration: none" target="_self" href="taxview.jsp" >
    <font color="#FFFFFF">Tax Records</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a style="text-decoration: none" target="_self" href= >
    <font color="#AD8BFE">Health Record</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a style="text-decoration: none"  target="_self" href="viewdetails.jsp">
    <font color="#FFFFFF">Gizmo's Update</font></a><font color="#FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     
	 <b><a href="logout.jsp" style="text-decoration: none" target="_self"><font color="#FFFFFF">Logout</font></a></font></b></font>
	
	
	</td>
  </tr>
 
 

   <tr><td colspan="3">
    <center><br>
   <table border="2" cellspacing="4" cellpading="6">
    <tr><th><font color="#330099">Patient Name</th><th><font color="#330099">Mobile Number</th><th><font color="#330099">Date of Birth</th><th><font color="#330099">Email</th><th><font color="#330099">Allergic</th><th><font color="#330099">Blood Group</th><th><font color="#330099">Gender</th><th><font color="#330099">Height(in ft)</th><th><font color="#330099">Weight(in kg)</th><th><font color="#330099">Address</th><th><font color="#330099">Pin Code</th><th><font color="#330099">Kind of Treatment</th><th><font color="#330099">Medications</th><th><font color="#330099">Relative/friend's name </th><th><font color="#330099">Relavtive's address</th><th><font color="#330099">Relationship to patient</th><th><font color="#330099">Relative's Mobile Number</th><th><font color="#330099">Referred Doctor</th>
    
 <%
 if(session.getAttribute("accno")!=null)
 {
 	String accno=session.getAttribute("accno").toString();
   try
   {
	   rs=stmt.executeQuery("select * from uva.health where accno='"+accno+"'");
	   while(rs.next())
	   {%>
  <tr>
  <td><%=rs.getString(2)%></td>
  <td><%=rs.getString(3)%></td>
  <td><%=rs.getString(4)%></td>
  <td><%=rs.getString(5)%></td>
  <td><%=rs.getString(6)%></td>
  <td><%=rs.getString(7)%></td>
  <td><%=rs.getString(8)%></td>
  <td><%=rs.getString(9)%></td>
  <td><%=rs.getString(10)%></td>
  <td><%=rs.getString(11)%></td>
  <td><%=rs.getString(12)%></td>
  <td><%=rs.getString(13)%></td>
  <td><%=rs.getString(14)%></td>
  <td><%=rs.getString(15)%></td>
  <td><%=rs.getString(16)%></td>
  <td><%=rs.getString(17)%></td>
  <td><%=rs.getString(18)%></td>
  <td><%=rs.getString(19)%></td>
  
  </tr>
	<%   
	}

   }
   catch(Exception ex)
   {
	   System.out.println(ex);
   }
 }
 %>

   </table>
  </center>
  </td>  
  </tr>
</table>

</body>

</html>