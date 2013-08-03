<%@ page import="java.sql.*"%>
<html>
<head>
</head>
<body>
<%int insertResult=0; %>
<% if(request.getParameter("flag")==null){%>
<form method="post">
<table>
<tr>
<td> Employee Id</td>
<td><input type="text" name="empId" maxlength="4"></td>
</tr>
<tr>
<td> employee name</td>
<td><input type="text" name="empName" maxlength="40"></td>
</tr>
<tr>
<td>employee address</td>
<td><textarea name="empAddr" rows="4" cols="20" style="font-size:80%;font-family:arial;sans-serif;width:140px;"></textarea></td>
<tr>
<td><input type="hidden" name="flag" value="1"/></td>
</tr>
<tr>
<td><input type="submit" value="submit"></td>
</tr>
</table>
</form>
<%}
else
{
String empId=request.getParameter("empId");
String empName=request.getParameter("empName");
String empAddr=request.getParameter("empAddr");
%>
<table border="1">
<tr>
<td>employee id</td>
<td><%=empId%></td>
</tr>
<tr>
<td>employee name</td>
<td><%=empName%></td>
</tr>
<tr>
<td>employee Address</td>
<td><%=empAddr%></td>
</tr></table>
<%
Connection conn=null;
Statement stmt=null;
try
{    	Class.forName("com.ibm.db2.jcc.DB2Driver");
	 conn=DriverManager.getConnection("jdbc:db2://localhost:50000/HCSS","db2admin","db2admin");
	 stmt=conn.createStatement();

//Class.forName(sun.jdbc.odbc.JdbcOdbcDriver);
//conn=DriverManager.getConnection("jdbc:odbc:connect");
//stmt=conn.createStatement();
insertResult=stmt.executeUpdate("insert into uva.employee(empId,empName,empAddr)VALUES('"+empId+"','"+empName+"','"+empAddr+"')");
}
catch(Exception e)
{
%>
<%=e%>
<%}
finally
{
if(stmt!=null)stmt.close();
if(conn!=null)conn.close();
}
}
if(request.getParameter("flag")!=null)
{
if(insertResult==0){%>
this record has not been inserted in the employee table
<%}
else{%>
this record has been successfully inserted in the employee table
<%}
}%>
</body>
</html>