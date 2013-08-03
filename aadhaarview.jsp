<%@ include file="DBConn.jsp"%>
<%@ page import="java.util.Date"%>
<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Aadhaar Card Details</title>
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
    <font color="#FFFFFF">PAN Card</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <a style="text-decoration: none" target="_self"  >
    <font color="#AD8BFE">Aadhaar Card</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a style="text-decoration: none" target="_self" href="taxview.jsp" >
    <font color="#FFFFFF">Tax Records</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a style="text-decoration: none" target="_self" href="healthrecordview.jsp" >
    <font color="#FFFFFF">Health Record</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a style="text-decoration: none"  target="_self" href="viewdetails.jsp">
    <font color="#FFFFFF">Gizmo's Update</font></a><font color="#FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     
	 <b><a href="logout.jsp" style="text-decoration: none" target="_self"><font color="#FFFFFF">Logout</font></a></font></b></font>
	
	
	</td>
  </tr>
 
 

   <tr><td colspan="3">
    <center><br>
   <table border="2" cellspacing="4" cellpading="6">
    <tr><th><font color="#330099">Card Number</th><th><font color="#330099">Name</th><th><font color="#330099">Gender</th><th><font color="#330099">Father's Name</th><th><font color="#330099">Address</th>
    
 <%
 if(session.getAttribute("accno")!=null)
 {
 	String accno=session.getAttribute("accno").toString();
   try
   {
	   rs=stmt.executeQuery("select * from uva.aadhaar where accno='"+accno+"'");
	   while(rs.next())
	   {%>
  <tr>
  <td><%=rs.getString(2)%></td>
  <td><%=rs.getString(3)%></td>
  <td><%=rs.getString(4)%></td>
  <td><%=rs.getString(5)%></td>
  <td><%=rs.getString(6)%></td>
  
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