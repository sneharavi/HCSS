<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<%@ page import="java.util.Date"%>
<%@ include file="DBConn.jsp"%>
<%! int dd,mm,yy,hh,min,sec;
Date d=null;
String pname,mobno,dob,email,allergic,bloodtype,gender,pincode,address,treatment,medications,relname,reladdr,relation,referreddoc,relmobno;
int accno=0;
String height,weight;
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
   		pname=request.getParameter("t1");
		 mobno=request.getParameter("t2");
		 dob=request.getParameter("t3");
		 email=request.getParameter("t4");
		 allergic=request.getParameter("t5");
		 bloodtype=request.getParameter("t6");
		 gender=request.getParameter("t7");
		 height=request.getParameter("t8");
		 weight=request.getParameter("t9");
		 address=request.getParameter("t10");
		 pincode=request.getParameter("t11");
		 treatment=request.getParameter("t12");
		 medications=request.getParameter("t13");
		 relname=request.getParameter("t14");
		 reladdr=request.getParameter("t15");
		 relation=request.getParameter("t16");
		 relmobno=request.getParameter("t17");
		 referreddoc=request.getParameter("t18");

	 
	  //rs=stmt.executeQuery("select balance from newacc where accno="+accno);
   int i= stmt.executeUpdate("insert into uva.health values('"+accno+"','"+pname+"','"+mobno+"','"+dob+"','"+email+"','"+allergic+"','"+bloodtype+"','"+gender+"','"+height+"','"+weight+"','"+address+"','"+pincode+"','"+treatment+"','"+medications+"','"+relname+"','"+reladdr+"','"+relation+"','"+relmobno+"','"+referreddoc+"')");
   if(i>0)
	 {
		
		%>
			
			
			<center>
			<br>
			<h1> Health Record details stored Successfully </h1>
			
			
			<br>
			
			<img src="images/health.jpg"/>
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