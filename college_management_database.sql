CREATE DATABASE IF NOT EXISTS College_management;
USE College_management;
CREATE Table IF NOT EXISTS branches(
	branch_id INT Primary KEY,
    branch_name VARCHAR(50) NOT NULL,
    students_enrolled_this_year INT NOT NULL,
    hod_of_branch VARCHAR(50) NOT NULL
);
CREATE TABLE subjects(
	branch_id INT,
    FOREIGN KEY (branch_id) REFERENCES branches(branch_id),
    subject_name VARCHAR(200) NOT NULL,
    subject_faculity VARCHAR(200) NOT NULL,
    FOREIGN KEY (branch_id) REFERENCES branches(branch_id)
		ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS students(
	student_id INT PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,
    email_id VARCHAR(50) NOT NULL,
    contact_no VARCHAR(10) NOT NULL,
    branch_id INT,
    FOREIGN KEY (branch_id) REFERENCES branches(branch_id)
		ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS attendance(
	attendance_id INT AUTO_INCREMENT PRIMARY KEY ,
	student_id INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    attendance_date DATE,
    attendance_status VARCHAR(20),
    attendance_today_total INT NOT NULL,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
		ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS daily_class(
	attendance_id INT,
    FOREIGN KEY (attendance_id) REFERENCES attendance(attendance_id)
		ON DELETE CASCADE,
    attendance_date DATE,
    classes_held INT NOT NULL
);
    






    
    
    
    
    
    
    
