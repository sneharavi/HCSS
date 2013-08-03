<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<%@ page import="java.util.Date"%>
<%@ include file="DBConn.jsp"%>
<%! int pinno,cvvno;
String ccno,expdate;
int dd,mm,yy,hh,min,sec;
Date d=null;
String name;

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
	 ccno=request.getParameter("t2");
	 expdate=request.getParameter("t3");
	 pinno=Integer.parseInt(request.getParameter("t4"));
	 cvvno=Integer.parseInt(request.getParameter("t5"));
	 
	 
	 
    int i= stmt.executeUpdate("insert into uva.credit values('"+accno+"','"+name+"','"+ccno+"','"+expdate+"','"+pinno+"','"+cvvno+"')");
    if(i>0)
	 {
		
		%>
			
			
			<center>
			<br>
			<h1> Credit Card details stored Successfully </h1>
			
			
			<br>
			
			<img src="images/creditcards.jpg"/>
			</center>
			<br>
			<br>
			<%
			
			
			
			out.println("<center><h3><a href='gizmosupdate.html' target='_self'>Click here to go back</a></h3>");
	 
	 }
 }
 
 catch(Exception ex)
 {
	 response.sendRedirect("creditcard.jsp");
 }
 }
%>
</html>