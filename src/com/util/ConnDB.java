package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnDB {
	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private static String username = "root";
	
	private static String password = "123456";
	
	private static String url =  "jdbc:mysql://127.0.0.1:3306/employ?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
	
	private static Connection conn;
	
	
	public static Connection getConn(){
		try {
			conn = DriverManager.getConnection(url,username,password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return conn;
	}
	
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ConnDB cd = new ConnDB();
		cd.getConn();
	}

}
