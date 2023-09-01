-- Created: 2023-09-01
-- Table: classes

CREATE TABLE classes (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    grade_level INTEGER,
    academic_year VARCHAR(9)
);

INSERT INTO classes (name, grade_level, academic_year) VALUES
('8A', 8, '2023-2024'),
('8B', 8, '2023-2024'),
('9A', 9, '2023-2024'),
('9B', 9, '2023-2024'),
('10A', 10, '2023-2024');
