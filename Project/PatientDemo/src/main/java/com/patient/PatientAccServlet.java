package com.patient;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;


public class PatientAccServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public PatientAccServlet() {
        super();
       
    }
 // PatientAccServlet.java
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	HttpSession session = request.getSession(false); // Use false to avoid creating a new session
    	if (session != null) {
    		String username = (String) session.getAttribute("username");
    		String userType = (String) session.getAttribute("userType");

    		if (username != null && userType != null) {
    			if ("patient".equals(userType)) {
    				
    				List<Patient> patientDetails = PatientDBUtil.getPatient(username);
    				request.setAttribute("patientDetails", patientDetails);
    				RequestDispatcher dis = request.getRequestDispatcher("patientAccount.jsp");
    				dis.forward(request, response);
    				
    			} else if ("docadmin".equals(userType)) {
    				List<docAdmin> adminDetails = PatientDBUtil.getDocadmin(username);
    				request.setAttribute("adminDetails", adminDetails);
    				RequestDispatcher dis = request.getRequestDispatcher("doctorAccount.jsp");
    				dis.forward(request, response);
    			}
    		} else {
    			response.sendRedirect("login.jsp"); // No user info, go back to login
    		}
    	} else {
    		response.sendRedirect("login.jsp"); // Session expired or doesn't exist, go to login
    	}
    }


}
