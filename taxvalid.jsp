<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<%@ page import="java.util.Date"%>
<%@ include file="DBConn.jsp"%>
<%! int areano,divno;
String cmcno,taxtype,address,sno,category;
int dd,mm,yy,hh,min,sec;
Date d=null;
String name;
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
	 areano=Integer.parseInt(request.getParameter("t1"));
	 divno=Integer.parseInt(request.getParameter("t2"));
	 cmcno=request.getParameter("t3");
	 taxtype=request.getParameter("t4");
	 address=request.getParameter("t5");
	 sno=request.getParameter("t6");
	 category=request.getParameter("t7");
	 
	 
	  //rs=stmt.executeQuery("select balance from newacc where accno="+accno);
    int i= stmt.executeUpdate("insert into uva.tax values('"+accno+"','"+areano+"','"+divno+"','"+cmcno+"','"+taxtype+"','"+address+"','"+sno+"','"+category+"')");
    if(i>0)
	 {
		
		%>
			
			
			<center>
			<br>
			<h1> Tax Details stored Successfully </h1>
			
			
			<br>
			
			<img src="images/tax.jpg" height="300 px" width="500 px">
			</center>
			<br>
			<br>
			<%
			
			
			
			out.println("<center><h3><a href='gizmosupdate.html' target='_self'>Click here to go back</a></h3>");
	 
	 }
}

 catch(Exception ex)
 {
	 out.println(ex.toString());
 }
}
%>
</html>