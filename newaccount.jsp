<html>
<head>
<title>Sign Up</title>
<script type="text/javascript" src="date_time.js"></script>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<style type="text/css">
#title
{	
	font-family: 'Comic Sans MS';
	font-size: 30px;
    position: absolute;
    top: -15px;
    left: 500px;
    color: black;
    }
#title1
{
	font-family: 'Monotype Corsiva';
	font-size: 20px;
	position: absolute;
    top: 30px;
    left: 630px;
    color: #0066CC;
}

footer{
	font-family: 'Arial';
	font-size: 15px;
    text-align: right;
    padding-left: 300px;
	display: inline;
	color: #0066CC;
    text-decoration: none;
    position: absolute;
    bottom: -20px;
    left: 100px;
}


</style>
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
    <font color="#FFFFFF"><b><a href="index.jsp"target="_self" style="text-decoration: none">
    <font color="#FFFFFF">Home</font></a></b></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font color="#336699"><b>
    
   <tr>

  <td colspan="3">
<br>   <center><font size="+2"><strong>SIGN UP</strong></font></center>
  
  </td>
  </tr>
   <tr><td colspan="3">
    <center><br>
   <table border="1">
  <form name="f1" action="newuser.jsp"target="_top" method="post">
   <tr>
   <td><font color="#330099"><b>Enter Username</b></font></td><td>:</td><td><input type="text" required="required" name="t1"></td></tr>
   <tr> <td><font color="#330099"><b>Enter Password</b></font></td><td>:</td><td><input type="password" required="required" name="t2"></td> </tr>
	<tr> <td><font color="#330099"><b>E-mail ID</b></font></td><td>:</td><td><input type="text" required="required" name="t3"></td> </tr>
	<tr> <td><font color="#330099"><b>Alternative Mail</b></font></td><td>:</td><td><input type="text" required="required" name="t4"></td> </tr>
	<tr> <td><font color="#330099"><b>Date Of Birth</b></font></td><td>:</td><td><input type="date" required="required" name="t5"></td> </tr>
	<tr><td><font color="#330099"><b>Residential Address</b></font></td><td>:</td><td><input type="text" id="demo1"  name="t6"></td></tr>
	<tr><td><font color="#330099"><b>Official Address</b></font></td><td>:</td><td><input type="text"	 name="t7"></td></tr>
    <tr><td><font color="#330099"><b>Contact Number</b></font></td><td>:</td><td><input type="text" required="required" name="t8"></td></tr>
    <tr><td colspan="3"><center><input type="submit" value="Submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="Clear"></center></td></tr>
   </table>
  </center>
  </td>
  </tr>
</table>
</body>
</html>