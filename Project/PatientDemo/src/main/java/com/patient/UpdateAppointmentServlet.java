package com.patient;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


public class UpdateAppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public UpdateAppointmentServlet() {
        super();
       
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("cusid");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String record = request.getParameter("r_num");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		String reason = request.getParameter("reason");
		
		boolean isTrue;
		
		isTrue = PatientDBUtil.updateAppointment(id, name, phone, record, date, time, reason);
		
		if(isTrue == true) {
			
			List<Appointment> appDetails = PatientDBUtil.getAppointmentDetails(id);
			request.setAttribute("appDetails", appDetails);
			
			String alertMessage = "Appointment Update Successful";
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
