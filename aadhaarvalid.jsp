<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<%@ page import="java.util.Date"%>
<%@ include file="DBConn.jsp"%>
<%! int dd,mm,yy,hh,min,sec;
Date d=null;
String name,cardno,gender,fname,address;

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
	 cardno=request.getParameter("t1");
	 name=request.getParameter("t2");
	 gender=request.getParameter("t3");
	 fname=request.getParameter("t4");
	 address=request.getParameter("t5");
	 
	  //rs=stmt.executeQuery("select balance from newacc where accno="+accno);
    int i= stmt.executeUpdate("insert into uva.aadhaar values('"+accno+"','"+cardno+"','"+name+"','"+gender+"','"+fname+"','"+address+"')");
    if(i>0)
	 {
		
		%>
			
			
			<center>
			<br>
			<h1> Aadhaar Card details stored Successfully </h1>
			
			
			<br>
			
			<img src="images/aadhaar.jpg"/>
			</center>
			<br>
			<br>
			<%
			
			
			
			out.println("<center><h3><a href='gizmosupdate.html' target='_self'>Click here to go back</a></h3>");
	 
	 }
}

 catch(Exception ex)
 {
	 response.sendRedirect("aadhaar.html");
 }
}
%>
</html>
