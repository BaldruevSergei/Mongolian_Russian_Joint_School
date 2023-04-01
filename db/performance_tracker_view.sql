-- Created: 2023-04-01
-- View: performance_tracker_view

CREATE VIEW performance_tracker_view AS
SELECT
    s.id AS student_id,
    s.last_name,
    s.first_name,
    s.group_name,
    r.test_title,
    r.test_date,
    r.score_value
FROM
    students s
JOIN
    results r ON s.id = r.student_id;
