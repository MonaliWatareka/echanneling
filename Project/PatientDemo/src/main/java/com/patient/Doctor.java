package com.patient;

public class Doctor {
	private int doctorID;
	private String dName;
	private String specialization;
	private String docPhone;
	private String doctorEmail;
	private String doctorPassword;
	
	public Doctor(int doctorID, String dName, String specialization, String docPhone, String doctorEmail,String doctorPassword) {
	
		this.doctorID = doctorID;
		this.dName = dName;
		this.specialization = specialization;
		this.docPhone = docPhone;
		this.doctorEmail = doctorEmail;
		this.doctorPassword = doctorPassword;
	}
	
	public int getDoctorID() {
		return doctorID;
	}
	public String getdName() {
		return dName;
	}
	public String getSpecialization() {
		return specialization;
	}
	public String getDocPhone() {
		return docPhone;
	}
	public String getDoctorEmail() {
		return doctorEmail;
	}
	public String getDoctorPassword() {
		return doctorPassword;
	}
	

}
