--Table: students
DROP TABLE IF EXISTS Students;
CREATE TABLE Students(
    student_id INTEGER PRIMARY KEY AUTOINCREMENT,
    student_name VARCHAR(255) UNIQUE NOT NULL,
    group_id INTEGER,
    FOREIGN KEY (group_id) REFERENCES Groups (groups_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

--Table: groups
DROP TABLE IF EXISTS Groups;
CREATE TABLE Groups(
    group_id INTEGER PRIMARY KEY AUTOINCREMENT,
    group_name VARCHAR(255) UNIQUE NOT NULL
);

--Table: teachers
DROP TABLE IF EXISTS Teachers;
CREATE TABLE Teachers(
    teacher_id INTEGER PRIMARY KEY AUTOINCREMENT,
    teacher_name VARCHAR(255) UNIQUE NOT NULL
);

--Table: subjects
DROP TABLE IF EXISTS Subjects;
CREATE TABLE Subjects(
    subject_id INTEGER PRIMARY KEY AUTOINCREMENT,
    subject_name VARCHAR(255) UNIQUE NOT NULL,
    teacher_id INTEGER,
    FOREIGN KEY (teacher_id) REFERENCES Teachers (teacher_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

--Table: grades
DROP TABLE IF EXISTS Grades;
CREATE TABLE Grades(
    grade_id INTEGER PRIMARY KEY AUTOINCREMENT,
    grade INTEGER,
    subject_id INTEGER,
    student_id INTEGER,
    date_received DATE,
    FOREIGN KEY (subject_id) REFERENCES Subjects (subject_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (student_id) REFERENCES Students (student_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);