package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.bean.EmployeeBean;

public class ViewEmployeeDAO {

	ArrayList<EmployeeBean> al= new ArrayList<EmployeeBean>();
	
	public ArrayList<EmployeeBean> retreiw_empdata(){
		try {
			Connection con=DBConnect.getConnect();
			 PreparedStatement pstm=con.prepareStatement("select * from Employee_Details");
			 ResultSet rs= pstm.executeQuery();
			 
			 while(rs.next()) {
				 EmployeeBean e=new EmployeeBean();
				 e.setE_id(rs.getString(1));
				 e.setE_fname(rs.getString(2));
				 e.setE_lname(rs.getString(3));
				 e.setE_sal(rs.getInt(4));
				 e.setAdd(rs.getString(5));
				 
				 al.add(e);
			 }
			}
		catch (Exception e) {
			e.printStackTrace();
		}
		return al;
	}
}
