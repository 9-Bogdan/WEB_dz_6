from datetime import datetime
import faker
from random import randint, choice
import sqlite3


def insert_data_to_db():
    fake_data = faker.Faker()
    fake_groups = [fake_data.company() for _ in range(5)]
    fake_students = [fake_data.name() for _ in range(30)]
    fake_teachers = [fake_data.name() for _ in range(5)]
    fake_subjects = ['English', 'physics', 'chemistry',
                     'math', 'Ukrainian language', 'geography', 'history']
    with sqlite3.connect('dz_6.db') as con:
        cur = con.cursor()
        for group_name in fake_groups:
            cur.execute(
                "INSERT INTO Groups (group_name) VALUES (?)", (group_name,))

        for student_name in fake_students:
            cur.execute(
                "INSERT INTO Students (student_name, group_id) VALUES (?,?)", (student_name, randint(1, 5),))

        for teacher_name in fake_teachers:
            cur.execute(
                "INSERT INTO Teachers (teacher_name) VALUES (?)", (teacher_name,))

        for subject in fake_subjects:
            cur.execute(
                "INSERT INTO Subjects (subject_name,teacher_id) VALUES (?,?)", (subject, randint(1, 5),))

        for student_id in range(1, 31):
            for subject in fake_subjects:
                for subject_id in range(1, 8):
                    num_of_grades = randint(1, 20)
                    for _ in range(num_of_grades):
                        grade = randint(1, 12)
                        date = fake_data.date()
                        query = "INSERT INTO Grades(student_id,subject_id, grade,date_received) VALUES (?,?,?,?)"
                        cur.execute(
                            query, (student_id, subject_id, grade, date))


insert_data_to_db()
