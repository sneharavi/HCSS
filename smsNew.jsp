<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><%@page
	language="java" import="java.net.*,java.io.*,java.net.URLEncoder;" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<html>
<head>
<title>index</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<%
String email="amistosoohcss@gmail.com"; 
String user="Amistosoo";
String pass="sriganesha3";
String number=session.getAttribute("mobno").toString();
String msg="Login Attempt Failure. Kindly check for illegal access" ; 
String mURL="http://www.onl9class.com/smsapi/smsir.php?email="+email+"&user="+user+"&pass="+pass+"&number="+number+"&msg="+URLEncoder.encode(msg, "UTF-8");;
URL url = new URL(mURL);
BufferedReader reader = null;

try {
    reader = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"));

    for (String line; (line = reader.readLine()) != null;) {
        out.println(line);
    }
} finally {
    if (reader != null) try { reader.close(); } catch (IOException ignore) {}
}
 %>
</body>
</html>

