import java.sql.*;
import java.io.*;
public class select
{
	public static void main(String args[])
	{
		Statement stmt;
		ResultSet reset;
		String sql;
		try
		{
			Class.forName("com.ibm.db2.jcc.DB2Driver");
			Connection conect=DriverManager.getConnection("jdbc:db2://localhost:50000/DATABASE","db2admin","db2admin");
			stmt=conect.createStatement();
			sql="select Name,item from studata,pricelist where RollNo=1001 and price=20";
			reset=stmt.executeQuery(sql);
			System.out.println("Name "+"\t"+"Soap used");
			while(reset.next())
			System.out.println(reset.getString("Name")+"\t"+reset.getString("item"));
			
			stmt.close();
			conect.close();
		}
		catch(SQLException sqe)
		{
			System.out.print(sqe);
		}
		catch(ClassNotFoundException cnf)
		{
			System.out.print(cnf);
		}
		
	}
}