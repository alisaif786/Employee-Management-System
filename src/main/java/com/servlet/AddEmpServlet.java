package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.EmployeeBean;
import com.dao.AddEmpDAO;

@WebServlet("/aes")
public class AddEmpServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        res.setContentType("text/html");
        PrintWriter out = res.getWriter();

        EmployeeBean eb = new EmployeeBean();

        eb.setE_id(req.getParameter("eid"));
        eb.setE_fname(req.getParameter("efname"));
        eb.setE_lname(req.getParameter("elname"));
        eb.setE_sal(Integer.parseInt(req.getParameter("esal")));
        eb.setAdd(req.getParameter("address"));

        AddEmpDAO dao = new AddEmpDAO();

        int rowCount = dao.insertEmpData(eb);

        if (rowCount > 0) {
            req.setAttribute("msg", "Employee Record Added Sucessfully");
            
            req.getRequestDispatcher("AddEmployee.jsp").forward(req, res);
        } 
        else {
            req.setAttribute("msg", "Employee Record not Inserted!!!");
            req.getRequestDispatcher("AddEmployee.jsp").forward(req, res);
        }
    }
}