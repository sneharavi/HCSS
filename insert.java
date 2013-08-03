import java.sql.*;
public class insert
{
public static void main(String args[])
	{
		Statement stmt;
		ResultSet reset;
		String sql,record1,record2, record3;
		
		try
		{
			Class.forName("com.ibm.db2.jcc.DB2Driver");
			Connection conect=DriverManager.getConnection("jdbc:db2://localhost:50000/student","db2admin","db2admin");
			stmt=conect.createStatement();
			sql="create table pricelist(item varchar(20), price int)";
			
			stmt.executeUpdate(sql);
			
			record1="insert into uva.pricelist(item, price)values('sandal soap', '18')";
			record2="insert into uva.pricelist(item, price)values('Neem soap', '20')";
			record3="insert into uva.pricelist(item, price)values('Baby soap', '25')";
			stmt.executeUpdate(record1);
			stmt.executeUpdate(record2);
			stmt.executeUpdate(record3);
			conect.commit();
			String select="select * from pricelist";
			reset=stmt.executeQuery(select);
			System.out.println("    Item   "+ "   Price\n");
			
			while(reset.next())
			System.out.println(reset.getString("item")+"\t"+ reset.getInt("price"));
			stmt.close();
			conect.close();	
			
			
		}
		catch(SQLException e)
		{
			System.out.print(e);
		}
		catch(ClassNotFoundException cnf)
		{
			System.out.print("class not found error");
		}
	}
}
