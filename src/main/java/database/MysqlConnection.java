package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MysqlConnection {

		
		private static final String url= "jdbc:mysql://localhost:3306/ultimo_crud";
		private static final String user= "root";
		private static final String password= "melissa";
		
		
		public static  Connection createConnection()  {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				System.out.println("Driver Encontrado");
			} catch (ClassNotFoundException e) {
				System.out.println(e.getMessage());
				
			}
			
			try {
				Connection connection = DriverManager.getConnection(url, user, password);
				System.out.println("Conectado com sucesso!");
				 return connection;
			} catch (SQLException e) {
				System.out.println(e.getMessage());
			}
			
			return null;
		}

	
}
