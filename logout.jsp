<%@ page contentType="text/html;"  language="java"  errorPage="error_Page.jsp" %>
<%
	session.removeAttribute("id");
	session.removeAttribute("name");
	session.invalidate();
%>

<html>
<head>
<title>Logout - Terminating Your Session</title>
<link rel="stylesheet" type="text/css" href="css/demo.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<meta http-equiv="refresh"  content="1 ; url=index.jsp">
</head>
<body>

<footer>
            <h3>&copy;2013 All Rights Reserved. Developed by AMISTOSOO</h3>
    </footer>

<p><strong><font size="5" color="#808080" face="Courier New, Courier, mono">You will be logged out Successfully!</font><font face="Courier New, Courier, mono" color="#999999">
<a href="userlog.jsp">Re-login</a></font></strong></p>
<p><strong><font face="Courier New, Courier, mono">Redirecting 
  you to Home Page automatically after 3 seconds. </font></strong> &nbsp;</p>
<p align="center">
<img border="0" src="images/redirect.JPG" width="200" height="250"></p>

</body>
</html>
