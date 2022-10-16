-- students_schema.sql
CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    last_name TEXT NOT NULL,
    first_name TEXT NOT NULL,
    middle_name TEXT,
    group_name TEXT,
    login TEXT UNIQUE
);
