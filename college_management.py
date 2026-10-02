import mysql.connector
from mysql.connector import Error


def database(cursor, connection):
    print("=" * 50)

    while True:
        print("1. SEE THE ORIGINAL DATABASE")
        print("2. ADD DATA")
        print("3. DELETE DATA")
        print("4. MARK ATTENDANCE")
        print("5. EXIT THE APPLICATION")
        print("=" * 50)

        ask = int(input("Enter your choice: "))

        if ask == 1:
            query = """
            SELECT students.student_name, branches.branch_name
            FROM students
            JOIN branches ON students.branch_id = branches.branch_id
            """
            cursor.execute(query)
            result = cursor.fetchall()
            for row in result:
                print(row)

        elif ask == 2:
            student_id = int(input("Enter student ID: "))
            student_name = input("Enter name: ")
            email_id = input("Enter email: ")
            contact_no = input("Enter contact number: ")
            branch_id = int(input("Enter branch ID: "))

            query = "INSERT INTO students (student_id, student_name, branch_id, email_id, contact_no) VALUES (%s, %s, %s, %s, %s)"
            try:
                cursor.execute(query, (student_id, student_name, branch_id, email_id, contact_no))
                connection.commit()
                print("Added successfully")
                cursor.execute("SELECT * FROM students")
                result = cursor.fetchall()
                for row in result:
                    print(row)
            except Error as e:
                print(f"Error while inserting data: {e}")

        elif ask == 3:
            student_id = int(input("Enter id: "))
            query = "DELETE FROM students WHERE student_id = %s"
            try:
                cursor.execute(query, (student_id,))
                connection.commit()
                print("Done")
                cursor.execute("SELECT * FROM students")
                result = cursor.fetchall()
                for row in result:
                    print(row)
            except Error as e:
                print(f"Error while deleting data: {e}")

        elif ask == 4:
            student_id = int(input("Enter student id: "))
            attendance_date = input("Enter date (YYYY-MM-DD): ")
            attendance_status = input("Enter status (Present/Absent): ")
            attendance_today_total= int(input("Enter total classes student attended today: "))

            query = "INSERT INTO attendance (student_id, attendance_date, attendance_status, attendance_today_total) VALUES (%s, %s, %s, %s)"
            try:
                cursor.execute(query, (student_id, attendance_date, attendance_status, attendance_today_total))
                connection.commit()
                print("Attendance marked successfully")

                cursor.execute("SELECT * FROM attendance")
                result = cursor.fetchall()
                for row in result:
                    print(row)
            except Error as e:
                print(f"Error while inserting attendance data: {e}")

        elif ask == 5:
            print("===EXITING THE APPLICATION===")
            break

        else:
            print("Invalid choice. Please try again.")


try:
    connection = mysql.connector.connect(
        host="localhost",
        user="root",
        password="Enter your password here",
        database="College_management"
    )

    if connection.is_connected():
        print("Connected to MySQL database")
        cursor = connection.cursor()
        database(cursor, connection)

except Error as e:
    print(f"Error while connecting to MySQL: {e}")

finally:
    if 'connection' in locals() and connection.is_connected():
        connection.close()
        print("MySQL connection closed")


database(cursor, connection)
