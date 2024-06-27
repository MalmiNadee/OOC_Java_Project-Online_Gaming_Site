package com.DataBase;

import java.sql.Connection;
import java.sql.DriverManager;


public class DBConnect {
	
	private static Connection con;
	 private static String jdbcURL = "jdbc:mysql://localhost:3306/game";
	private static String jdbcUsername = "root";
	private static String jdbcPassword = "$23Malmi21@45";
	public  static Connection getConnection()  {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(jdbcURL,jdbcUsername, jdbcPassword);
			
		} catch (Exception e) {
            e.printStackTrace();
        }
		return con;
	}

}	
	
	   
	    