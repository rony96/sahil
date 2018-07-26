package com.ibm.controller.copy;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.dao.DepartmentDAO;
import com.ibm.model.Department;


@WebServlet("/department")
public class department extends HttpServlet {  
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int parameter=Integer.parseInt(request.getParameter("location"));
		DepartmentDAO dao=new DepartmentDAO();
		ArrayList<Department> depts =dao.getDeptbyLoc(parameter);
		
		request.setAttribute("depts", depts);
		
		
		
		
		RequestDispatcher disp=request.getRequestDispatcher("departmentlist.jsp");
		disp.forward(request, response);
		
		
		
		
		
		
		
	}

}
