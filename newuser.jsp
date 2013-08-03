<html>

<%@ page import="java.io.*,java.sql.*,java.security.MessageDigest,algorithm.*,java.util.Date"%>
<%@ include file="DBConn.jsp"%>


<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New User</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<base target="main">

</head>

<body>


  
  <%!
     String uname,password,mail,altmail,dob,resaddr,offaddr,mobno;
  
   int accno=0;
	 Date d=null;
	 int dd,mm,yy,hh,min,sec; 
  %>
  <%
    try
	{
    	
    	
		 d=new Date();
		dd=d.getDate();
		mm=d.getMonth()+1;
		yy=d.getYear()+1900;
		hh=d.getHours();
		min=d.getMinutes();
		sec=d.getSeconds();
		String date=dd+"/"+mm+"/"+yy+"-"+hh+":"+min+":"+sec; 
		uname=request.getParameter("t1");
		password=request.getParameter("t2");
		mail=request.getParameter("t3");
		altmail=request.getParameter("t4");
		dob=request.getParameter("t5");
		resaddr=request.getParameter("t6");
		offaddr=request.getParameter("t7");
		mobno=request.getParameter("t8");
		
		
	int	accno = 4200 + (int)(Math.random()*5000); 

		
		
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
		 
		 
	
		int i=stmt.executeUpdate("insert into UVA.SIGNUP values('"+accno+"','"+uname+"','"+enpassword+"','"+mail+"','"+altmail+"','"+dob+"','"+resaddr+"','"+offaddr+"','"+mobno+"','"+date+"')");

		if(i>0)
		{
			
			session.setAttribute("regmail",mail);
			session.setAttribute("regaccno",accno);
			session.setAttribute("regpwd",password);
			%>
			<%@ include file="mail.jsp"%>
			
			<center>
			<br>
			<h1> Registration Successful </h1>
			
			
			<br>
			
			<img src="images/images.jpg"/>
			</center>
			<br>
			<br>
			<%
			
			
			out.println("<center>UR Lock Number is:  <b><h3>"+accno);
			out.println("<h3><a href='userlog.jsp' target='_self'>Click here to go back to Sign In page</a></h3>");
			
		 
		}
		else
		{
			response.sendRedirect("newaccount.jsp");
		}
	

    



    }
	catch(Exception ex)
	{
		
		response.sendRedirect("newaccount.jsp");
		
	}
 %>



</body>

</html>