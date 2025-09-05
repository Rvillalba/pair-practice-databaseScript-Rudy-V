START TRANSACTION;

DROP TABLE IF EXISTS departments, resources, course_materials;

CREATE TABLE departments (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
department_name VARCHAR(50) NOT NULL,
department_head VARCHAR(50) NOT NULL
);

CREATE TABLE resources (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(50) NOT NULL,
category VARCHAR(50) NOT NULL,
available BOOLEAN NOT NULL
);

CREATE TABLE course_materials (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
course_name VARCHAR(50) REFERENCES departments(department_name),
assessments VARCHAR(50) NOT NULL,
media VARCHAR(50) NOT NULL
);

INSERT INTO departments (department_name, department_head)
VALUES
('Psychology', 'Dr. Brain'),
('Mathematics', 'Mr. Plus'),
('Science', 'Dr. Nye');

INSERT INTO resources (title, category, available)
VALUES
('Psychology Today', 'journal', 1),
('Math Quarterly', 'magazine', 0),
('Science 101', 'book', 1);

INSERT INTO course_materials (course_name, assessments, media)
VALUES
('Intro to Psychology', 'quizzes', 'lecture video'),
('Trigenometry', 'test', 'digital textbook'),
('Chemistry', 'assignment', 'web article');

COMMIT;