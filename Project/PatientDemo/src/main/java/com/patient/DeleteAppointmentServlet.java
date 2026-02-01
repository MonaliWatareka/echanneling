package com.patient;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class DeleteAppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public DeleteAppointmentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String id = request.getParameter("cusid");
		
		boolean isTrue;
		
		isTrue = PatientDBUtil.deleteAppointment(id);
		
		if(isTrue == true) {
			String alertMessage = "Appoinment Delete Successful";
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='Display'</script>");			
			
		}
		else {
			List<Appointment> appDetails = PatientDBUtil.getAppointmentDetails(id);
			request.setAttribute("appDetails", appDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("display.jsp");
			dis.forward(request, response);
		}
	}

}
