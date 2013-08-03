<%@ page import="java.sql.*"%>
<%! Connection con=null;
    Statement stmt=null;
	 ResultSet rs=null;
%>
<%
 try
 {
	 Class.forName("com.ibm.db2.jcc.DB2Driver");
	 con=DriverManager.getConnection("jdbc:db2://localhost:50000/DATABASE","db2admin","db2admin");
	 stmt=con.createStatement();
 }
 catch(Exception ex)
 {
	 out.println("Database cannot be connected"+ex);
 }
%>