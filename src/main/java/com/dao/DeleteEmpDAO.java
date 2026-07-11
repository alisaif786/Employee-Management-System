package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DeleteEmpDAO {
	
	public int removeEmp(String id) {
		int rows=0;
		try {
			Connection con=DBConnect.getConnect();
			PreparedStatement pstm=con.prepareStatement("delete from employee_details where e_id=?");
			pstm.setString(1, id);
			rows=pstm.executeUpdate();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return rows;
	}

}
