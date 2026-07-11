package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.DeleteEmpDAO;

@WebServlet("/des")
public class DeleteEmpServlet extends HttpServlet{
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/html");
		
		DeleteEmpDAO de=new DeleteEmpDAO();
		int rowCount=de.removeEmp(req.getParameter("eid"));
		if(rowCount>0) {
			req.setAttribute("msg", "Employee Details Deleted Sucsessfully");
			req.getRequestDispatcher("DeleteEmp.jsp").forward(req, res);
		}
		else {
			req.setAttribute("msg", "Employee Details are NOT FOUND!!!");
			req.getRequestDispatcher("DeleteEmp.jsp").forward(req, res);
		}
	}

}
