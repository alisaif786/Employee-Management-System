package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.bean.EmployeeBean;

public class AddEmpDAO {
	
	public int insertEmpData(EmployeeBean eb) {
		int rowCount=0;
		try {
			Connection con=DBConnect.getConnect();
			PreparedStatement psmt=con.prepareStatement("insert into Employee_Details values(?,?,?,?,?)");
			psmt.setString(1, eb.getE_id());
			psmt.setString(2, eb.getE_fname());
			psmt.setString(3, eb.getE_lname());
			psmt.setInt(4, eb.getE_sal());
			psmt.setString(5, eb.getAdd());
			rowCount = psmt.executeUpdate();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return rowCount;
	}

}
