<%@ page import="java.io.*,java.security.*,algorithm.*,java.util.Date"%>
<%@ include file="DBConn.jsp"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css" />


</head>
</html>
<%! String umail,password;
%>
<%
try
{
	umail=request.getParameter("t1");
	password=request.getParameter("t2");

	
	MessageDigest alg = MessageDigest.getInstance("MD5");
	 
	alg.reset(); 
	 
	alg.update(password.getBytes());
	 
	byte[] digest = alg.digest();
	 
	StringBuffer hashedpasswd = new StringBuffer();
	String hx;
	for (int i=0;i<digest.length;i++)
	{
		hx =  Integer.toHexString(0xFF & digest[i]);
		if(hx.length() == 1){hx = "0" + hx;}
		hashedpasswd.append(hx);
	}
	 
	String enpassword=hashedpasswd.toString();
	
	rs=stmt.executeQuery("SELECT * FROM UVA.SIGNUP WHERE MAIL='"+umail+"' AND PASSWORD='"+enpassword+"'");
	if(rs.next())
	{
		String accno=rs.getString(1);
		
		
		session.setAttribute("accno",accno);
		
       response.sendRedirect("gizmos.htm");
	}
	
	
	else
	{
		
	       
		
		 %>
			
			<center>
			<br>
			<h1> Sign in Failure</h1>
			
			
			<br>
			
			<img src="images/images2.jpg"/>
			</center>
			<br>
			<br>
			<%
			out.println("<center><h3><a href='userlog.jsp' target='_self'>Click here to go back to Sign In page</a></h3></center>");
		
	
	}
}
catch(Exception ex)
{
	out.println(ex);
}
%>








