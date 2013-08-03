<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<%@ page import="java.util.Date"%>
<%@ include file="DBConn.jsp"%>
<%! int dd,mm,yy,hh,min,sec;
Date d=null;
String name, fname, dob, panno;
int accno=0;
%>

<%
if(session.getAttribute("accno")!=null)
{
	String accno=session.getAttribute("accno").toString();
	
 try
 {
	 d=new Date();
		dd=d.getDate();
		mm=d.getMonth()+1;
		yy=d.getYear()+1900;
		hh=d.getHours();
		min=d.getMinutes();
		sec=d.getSeconds();
		String date=dd+"-"+mm+"-"+yy+":"+hh+":"+min+":"+sec;
	 name=request.getParameter("t1");
	 fname=request.getParameter("t2");
	 dob=request.getParameter("t3");
	 panno=request.getParameter("t4");
	 
	  //rs=stmt.executeQuery("select balance from newacc where accno="+accno);
    int i= stmt.executeUpdate("insert into uva.pancard values('"+accno+"','"+name+"','"+fname+"','"+dob+"','"+panno+"')");
    if(i>0)
	 {
    	%>
		
		
		<center>
		<br>
		<h1> PAN Card details stored Successfully </h1>
		
		
		<br>
		
		<img src="images/pancard.jpg"/>
		</center>
		<br>
		<br>
		<%
		
		
		
		out.println("<center><h3><a href='gizmosupdate.html' target='_self'>Click here to go back</a></h3>");
 
 }
}

 catch(Exception ex)
 {
	 response.sendRedirect("pancard.jsp");
 }
}
%>
</html>