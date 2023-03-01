Created: 2022-10-10 · Updated: 2023-06-05 · Author: Sergei Baldruev · Language: English · Document type: System evolution log

Test System Evolution Log

Mongolian-Russian Joint School
Phase 2 of Digitalization: Educational Software & Testing (2022–2023)

Objective:
To replace manual paper-based tests with a digital testing system, improve data accuracy, and support performance monitoring.

Key Milestones:

Implementation of Indigo Testing System:
• Installed and configured Indigo on the local school server
• Created class-subject-test hierarchy for all grades (8–11)
• Defined access roles for teachers and administrators

Development of Student Databases:
• Imported student data into PostgreSQL
• Created tables and views to support grouping by class, subject, and period
• Linked test results to student IDs for history tracking

Integration with Performance Monitoring:
• Built export functions to collect test results in Excel
• Integrated scoring with teacher dashboards and lesson logs
• Allowed longitudinal analysis of student performance

Creation of Digital Curriculum Materials:
• Developed test content in HTML format for delivery via LMS
• Used Java and JavaScript for coding tasks in informatics tests
• Designed computer graphics assignments for grade 9 (raster/vector tasks)

Impact:

• Improved grading consistency and reduced manual error
• Teachers saved 60% of time on test preparation and checking
• Introduced real data for academic progress analysis

Reference:
See also /docs/Indigo_Testing_System_Guide.md and /db/performance_tracker_view.sql
