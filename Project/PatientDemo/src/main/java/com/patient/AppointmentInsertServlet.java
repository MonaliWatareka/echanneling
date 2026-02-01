package com.patient;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


public class AppointmentInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AppointmentInsertServlet() {
        super();
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String record = request.getParameter("record");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		String reason = request.getParameter("reason");
		
		boolean isTrue;
		
		isTrue = PatientDBUtil.insertAppointment(name, phone, record, date, time, reason);
		
		if(isTrue == true) {
			String alertMessage = "Data Insert Successful";
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='Display'</script>");			
			
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}
	

}
