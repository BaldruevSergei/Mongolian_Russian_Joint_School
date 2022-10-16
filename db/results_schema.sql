-- results_schema.sql
CREATE TABLE results (
    id INTEGER PRIMARY KEY,
    student_id INTEGER REFERENCES students(id),
    group_name TEXT,
    test_title TEXT,
    test_date DATE,
    test_time TIME,
    status TEXT,
    score_value INTEGER,
    score_letter TEXT
);
