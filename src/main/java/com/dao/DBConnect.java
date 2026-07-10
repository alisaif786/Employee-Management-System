package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	static Connection con=null;
	static {
		try {
			Class.forName(DbInfo.driver);
			con=DriverManager.getConnection(DbInfo.url, DbInfo.dbUname, DbInfo.dbPwd);
		
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static Connection getConnect() {
		return con;
	}

}
