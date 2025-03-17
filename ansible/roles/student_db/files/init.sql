-- Створити базу даних
CREATE DATABASE students_db;

\c students_db;

-- Таблиця студентів
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Таблиця дисциплін
CREATE TABLE subjects (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Таблиця оцінок
CREATE TABLE grades (
    id SERIAL PRIMARY KEY,
    student_id INT REFERENCES students(id),
    subject_id INT REFERENCES subjects(id),
    grade INT CHECK (grade BETWEEN 0 AND 100)
);

-- Додати студентів
INSERT INTO students (name) VALUES
('Іван Петренко'),
('Марія Коваль'),
('Олег Сидоренко');

-- Додати дисципліни
INSERT INTO subjects (name) VALUES
('Математика'),
('Фізика'),
('Інформатика');

-- Додати оцінки
INSERT INTO grades (student_id, subject_id, grade) VALUES
(1, 1, 95),
(1, 2, 88),
(2, 1, 76),
