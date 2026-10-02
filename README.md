# College Management System

This is my first Python + MySQL project.

I made a simple College Management System where I can:
- Add students
- View students
- Delete students
- Mark attendance

### Tables used:
- branches
- subjects
- students
- attendance
- daily_class

---

## How to run this project

### 1. Setup Database
1. Open MySQL Workbench
2. Run the file `college_management_database` (this will create the tables)
3. Run the file `sample_data.sql` (this will insert some sample data)

### 2. Install required library
```bash
pip install mysql-connector-python
python college_management.py
