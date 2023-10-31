package processor;

import java.sql.Connection;
import java.sql.DriverManager;

public class DB_connection {


	static Connection connection;
	public static Connection connectToDb()
	{
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			String username="root";
			String password = "root";
			String db_info = "jdbc:mysql://localhost:3306/application";
			connection = DriverManager.getConnection(db_info,username,password);
		} 
		catch (Exception e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return connection;
	}


}
