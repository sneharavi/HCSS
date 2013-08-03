<%@ page import="java.util.Date"%>
<%@ include file="DBConn.jsp"%>
<%! int balance,accno,dd,mm,yy,hh,min,sec,availbalance;
Date d=null;
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
		String date=dd+"-"+mm+"-"+yy+":"+hh+":"+min+":"+sec;
	 accno=Integer.parseInt(request.getParameter("t1"));
	 balance=Integer.parseInt(request.getParameter("t2"));
    rs=stmt.executeQuery("select balance from newacc where accno="+accno);
   if(rs.next())
	 {
	   availbalance=rs.getInt(1);
	 }
	 availbalance+=balance;
   int i= stmt.executeUpdate("insert into deposit values("+accno+","+balance+","+ availbalance+",'"+date+"')");
    if(i>0)
	 {
		out.println("Deposited Sucessfully");
		stmt.executeUpdate("update newacc set balance="+availbalance+" where accno="+accno);
	 rs=stmt.executeQuery("select balance from newacc where accno="+accno);
   if(rs.next())
	 {
	   availbalance=rs.getInt(1);
	   out.println("Ur current Available Balance is"+availbalance);
	 }

		out.println("Ur current Available Balance is"+availbalance);
	 }
	 else
		 out.println("Exception");

	 out.println("<a href=umenu.jsp>Back</a>");

 }
 catch(Exception ex)
 {
	 out.println(ex.toString());
 }

%>