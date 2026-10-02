INSERT INTO branches (branch_id, branch_name, students_enrolled_this_year, hod_of_branch )
VALUES( '355', 'CSE', '200', 'Miss Charlie Bradbury'),
	  ('322', 'CE', '200', 'Mr Sam Winchester'),
      ('341', 'ME(auto)','200', 'Mr Dean Winchester'),
      ('328', 'EE','200', 'Mr John Winchester');
      
      
SELECT * FROM branches;
            
INSERT INTO subjects (branch_id, subject_name, subject_faculity)
Values('355', 'Database Management System', 'Mr Ravi Kesh'),
	  ('355', 'Operating System', 'Miss Shivani'),
      ('355', 'Computer Network', 'Miss Fatima'),
      ('322', 'Survey- 1', 'Mr Xyz'),
      ('322', 'CT', 'Mr Xyz'),
      ('322', 'BC', 'Mr Xyz'),
      ('322', 'CM', 'Mr Xyz'),
      ('341', 'MOM', 'Mr Xyz'),
      ('341', 'M&M', 'Mr Xyz'),
      ('328', 'Thermal', 'Mr Xyz'),
      ('328', 'FM&HM', 'Mr Xyz');
      
SELECT * FROM subjects;
INSERT INTO students(student_id, student_name, email_id, contact_no, branch_id)
VALUES 
('1001', 'David Nair', 'david.nair13@college.edu', '8181241943', 322),
('1002', 'Myra Joshi', 'myra.joshi23@college.edu', '9906402157', 355),
('1003', 'Sai Thompson', 'sai.thompson64@college.edu', '7136505587', 355),
('1004', 'Sai Brown', 'sai.brown39@college.edu', '9170484433', 328),
('1005', 'Vivaan Harris', 'vivaan.harris35@college.edu', '9791232393', 341),
('1006', 'Oliver Jones', 'oliver.jones67@college.edu', '9530876844', 328),
('1007', 'Aarav Dubey', 'aarav.dubey30@college.edu', '9998485882', 341),
('1008', 'Emma Davis', 'emma.davis29@college.edu', '7924765563', 355),
('1009', 'Reyansh Patel', 'reyansh.patel58@college.edu', '7415393687', 355),
('1010', 'Liam Garcia', 'liam.garcia43@college.edu', '7186618211', 341),
('1011', 'Vikram Nair', 'vikram.nair58@college.edu', '7338444264', 328),
('1012', 'Riya Malhotra', 'riya.malhotra89@college.edu', '8553210608', 355),
('1013', 'Priya Zaidi', 'priya.zaidi18@college.edu', '7196814233', 322),
('1014', 'Amanda Rodriguez', 'amanda.rodriguez20@college.edu', '7999829240', 355),
('1015', 'Noah Davis', 'noah.davis68@college.edu', '9730243887', 328),
('1016', 'Ananya Chatterjee', 'ananya.chatterjee55@college.edu', '7899825838', 355),
('1017', 'James Ali', 'james.ali92@college.edu', '7306671447', 341),
('1018', 'David Smith', 'david.smith78@college.edu', '8051454923', 322),
('1019', 'Mia Sen', 'mia.sen44@college.edu', '9748778024', 328),
('1020', 'Myra Ali', 'myra.ali51@college.edu', '7240251661', 322);


SELECT * FROM students;

INSERT INTO attendance(student_id, attendance_date, attendance_status, attendance_today_total)
VALUES 
(1001, '2026-09-27', 'Present', 4),
(1002, '2026-09-27', 'Present', 6),
(1003, '2026-09-27', 'Absent',  0),
(1004, '2026-09-27', 'Present', 4),
(1005, '2026-09-27', 'Present', 2),
(1006, '2026-09-27', 'Present', 4),
(1007, '2026-09-27', 'Absent',  0),
(1008, '2026-09-27', 'Present', 3),
(1009, '2026-09-27', 'Present', 4),
(1010, '2026-09-27', 'Present', 3),
(1011, '2026-09-27', 'Present', 4),
(1012, '2026-09-27', 'Present', 3),
(1013, '2026-09-27', 'Absent',  0),
(1014, '2026-09-27', 'Present', 4),
(1015, '2026-09-27', 'Present', 4),
(1016, '2026-09-27', 'Present', 3),
(1017, '2026-09-27', 'Present', 2),
(1018, '2026-09-27', 'Present', 4),
(1019, '2026-09-27', 'Absent',  0),
(1020, '2026-09-27', 'Present', 4);

SELECT * FROM attendance;

INSERT  INTO daily_class (attendance_id, attendance_date, classes_held)
VALUES(1, '2026-09-27', 6);

SELECT students.student_name,branches.branch_name, attendance.attendance_date, attendance.attendance_status
FROM students
JOIN branches
	ON students.branch_id= branches.branch_id
JOIN attendance
	ON students.student_id = attendance.student_id;

SELECT students.student_name,branches.branch_name
FROM students
JOIN branches
	ON students.branch_id= branches.branch_id;
    
    









      
      

                    
                    
      