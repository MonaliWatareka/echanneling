# DOC Care - An Online e-chaneeling website
<img width="1920" height="1080" alt="Screenshot (51)" src="https://github.com/user-attachments/assets/336bc252-d625-44e1-bb73-f789529c3c77" />

# Introduction
Doc Care is a user-friendly online e-channeling platform designed to simplify the channeling experience. This project was developed as part of the Object-Oriented Programming (OOP) module in Year 2, Semester 1 at SLIIT.

This project emphasizes clean code, modular design, and a well-organized file structure, adhering to Java naming conventions and best practices.

# Key Features of the System

-- User Registration (Patient Account Creation)
Patients can create a new account by providing personal details (first name, last name, phone, date of birth, email, password).
User Authentication & Role-based Login
Supports login for two main user types:
Patients (patient)
Doctors/Admins (docadmin)
Credentials are validated against separate tables (patient and docadmin).

-- Session Management & Logout
Maintains user session after successful login.
Proper logout functionality that invalidates the session and redirects to login page.
Patient Profile Management
View own profile details (patientAccount.jsp)
Update personal information (name, phone, DOB, email, password)
Delete own account (with confirmation flow)

-- Doctor/Admin Profile & Account Management
Doctors/Admins can view and manage their own account details
Separate account view page (doctorAccount.jsp)

-- Doctor Availability Management (Admin/Doctor Feature)
Set new availability slots (doctor name, specialization, date, time range, hospital)
View list of all availability records
Update existing availability slots
Delete availability records

-- Appointment Management (Main Patient Feature)
Create new appointment (patient name, phone, record number, date, time, reason)
View all appointments (admin/doctor view – appointmentsList.jsp)
View own appointments (patient view – myAppointmentList.jsp)
Update existing appointment details
Delete/cancel appointment

-- Lab Report Management (Hospital/Admin Feature)
Create new lab report (hospital name, patient name, test type, result/details, date)
View all lab reports (LabReport.jsp)
Update existing lab report
Delete lab report record

-- Protected Pages & Role-based Access Control (basic)
- **Patient-specific pages are accessible after patient login.**
- **Doctor/admin-specific pages are shown after docadmin login.**
- **Session validation prevents unauthorized access to account pages.**
- **Database-driven CRUD Operations**
- **Full Create–Read–Update–Delete support for:**
- **Patient accounts**
- **Doctor availability slots**
- **Appointments**
- **Lab reports**

-- Success / Failure Feedback
- **Redirects to success or failed pages after most operations**
- **JavaScript alerts for some success/failure cases (especially insert/update/delete)**

-- Basic Front-end to Back-end Integration
- **Uses RequestDispatcher and sendRedirect for navigation.**
- **JSP pages receive data via request attributes (lists of patients, appointments, availabilities, lab reports).**
- **Plain-text Password Storage (Security Note)**
- **Passwords are currently stored in plain text in both patient and docadmin tables → major security concern (should be hashed).**

-- Summary – Most Prominent Modules / Sub-systems

- **Patient Registration & Account CRUD**
- **Multi-role Login (Patient + Doctor/Admin)**
- **Session-based Authentication & Logout**
- **Doctor Availability CRUD**
- **Appointment Booking & Management CRUD**
- **Lab Report Management CRUD**
- **Personal Profile View & Update (for both roles)**

# File Structure
- **The project is organized following the MVC architecture and proper Java coding conventions to ensure clarity and scalability.**

# Project Highlights

- **Technology Stack:**
Java Servlets and JSP
MVC Architecture

- **OOP Principles:**
Utilized abstraction, inheritance, interfaces, and polymorphism.

-**Session Management**: 
Enabled appointment booking functionality without requiring a login

-**Coding Standards:**
Proper naming conventions for classes, methods, and variables.
Clear separation of concerns across layers: Controller, DAO, Model, Service.

## Installation Instructions for Users

1. **Download the project** files or clone the repository.
2. **Set up the database** using the provided schema.
3. **Open the project in Eclipse IDE**.
   - Navigate to `File > Import > Existing Projects into Workspace`.
4. **Configure the database connection** in the DBConnect class.
   - Navigate to `dao > DBConnect`.
5. **Configure the server**:
   - Add an **Apache Tomcat** server to Eclipse.
   - Deploy the project on the configured server.
6. **Run the project on the server**:
   - Right-click the project in Eclipse and select `Run As > Run on Server`.
7. **Access the application through the browser**.
