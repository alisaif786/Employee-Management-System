package com.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.EmployeeBean;
import com.dao.ViewEmployeeDAO;

@WebServlet("/View")
public class ViewEmployeeServlet extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ArrayList<EmployeeBean> al = new ViewEmployeeDAO().retreiw_empdata();
		req.setAttribute("list", al);
		req.getRequestDispatcher("viewEmployee.jsp").forward(req, res);
		}
}
