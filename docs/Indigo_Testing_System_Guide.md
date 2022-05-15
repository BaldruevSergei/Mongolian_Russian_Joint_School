
 Indigo Testing System – Configuration Guide

 Mongolian-Russian Joint School  
 Deployment period: 2022–2025

  Purpose

To standardize and digitize student assessments across subjects using the Indigo testing system, including automatic grading, performance tracking, and report generation.



 System Setup Steps

 1. Installation and Access
- Installed Indigo on a local server with network access for teachers
- Created admin and teacher user accounts with role-based permissions

 2. Class and Subject Structure
- Defined all grade levels (8–11) in the system
- Added subjects: Informatics, Math, Physics, Computer Graphics
- Linked subjects to class schedules and teachers

 3. Test Creation
- Developed test templates for different question types:
  - Single-choice
  - Multiple-choice
  - Short-answer
  - Match and ordering
- Used metadata tags for topic, difficulty, and lesson link

 4. Student Enrollment
- Imported student data from the school database
- Synced names, IDs, and class assignments via CSV

 5. Testing Workflow
- Teachers assigned tests based on the weekly plan
- Students accessed tests via school computers
- After submission, Indigo auto-graded most formats
- Teachers reviewed flagged questions and adjusted scores if needed

 6. Reporting
- Exported test results into Excel
- Aggregated results by student, class, subject, and topic
- Printed and shared reports with school administration



 Usage Best Practices

- Keep question banks organized by subject and topic
- Use tags to improve filtering and reusability
- Periodically back up test databases and results
- Regularly train new teachers on test creation workflows



  Impact

- Reduced grading time by 60%
- Improved transparency of student progress
- Enabled quick adaptation to remote and hybrid learning
- Provided valuable analytics for curriculum planning

Related resources: `/docs/Test_System_Evolution.md`, `/scripts/export_students_csv.py`

