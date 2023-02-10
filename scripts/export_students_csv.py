# Created: 2023-02-10 · Updated: 2025-04-05 · Author: Sergei Baldruev · Language: Python · Script type: Data export

"""
Export student records from PostgreSQL database to CSV.
Used for reporting and integration with third-party systems (e.g., Excel).
"""

import psycopg2
import csv
from datetime import date

# Connection parameters
conn = psycopg2.connect(
    dbname="indigo_db",
    user="postgres",
    password="yourpassword",
    host="localhost",
    port="5432"
)

cursor = conn.cursor()

# Query student table
cursor.execute("""
    SELECT id, last_name, first_name, middle_name, group_name, login
    FROM students
    ORDER BY group_name, last_name;
""")

students = cursor.fetchall()

# Output file path
filename = f"students_export_{date.today()}.csv"

# Write to CSV
with open(filename, "w", newline="", encoding="utf-8") as csvfile:
    writer = csv.writer(csvfile)
    writer.writerow(["ID", "Last Name", "First Name", "Middle Name", "Group", "Login"])
    writer.writerows(students)

print(f"Export complete: {filename}")

cursor.close()
conn.close()
