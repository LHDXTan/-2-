package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {

	public static Connection getConnection(){
		Connection con=null;
		try{
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			String url="jdbc:sqlserver://localhost:1433;databaseName=周三作业3.21";
			con=DriverManager.getConnection(url,"sa","19970723");
			System.out.println(con);
		}catch(Exception e){
			System.out.println(e);
		}
		return con;
	}

	public static void close(Connection con){
		try{
			con.close();
		}catch(Exception e){}
	}
	
	public static void main(String[] args){
		ConnectionFactory.getConnection();
		
	}
}
