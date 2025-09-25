CREATE TABLE students_list(
    first_name VARCHAR(50),
    surname VARCHAR(50),
    age int,
    student_id VARCHAR(50),
    major_id VARCHAR(50)
);
INSERT INTO students_list 
    (first_name, surname, age, student_id, major_id)
VALUES 
    ('Mirfayz', 'Irgashev', '19', '1', '3');
SELECT * FROM students_list;
INSERT INTO students_list VALUES ('Malika', 'Eshonqulova', '24', '2', '5');
INSERT INTO students_list VALUES ('Umid', 'Sanjarov', '23', '3', '6');
INSERT INTO students_list VALUES ('Shaxriza', 'Nurmuxammadova', '21', '4', '4');
INSERT INTO students_list VALUES ('Madina', 'Ergasheva', '23', '5', '2');
INSERT INTO students_list VALUES ('Umida', 'Majidova', '18', '6', '1');
SELECT * from students_list;
alter table students_list add column profession VARCHAR (50);
SELECT * FROM students_list;
UPDATE students_list
SET profession = 'athlete'
WHERE student_id = '1';
UPDATE students_list SET profession = 'designer' WHERE student_id = '2';
UPDATE students_list SET profession = 'driver' WHERE student_id = '3';
UPDATE students_list SET profession = 'cook' WHERE student_id = '4';
UPDATE students_list SET profession = 'pilot' WHERE student_id = '5';
UPDATE students_list SET profession = 'teacher' WHERE student_id = '6';
SELECT * FROM students_list;
CREATE TABLE profession (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50)
);
SELECT * FROM profession;
insert into profession (name) VALUES ('athlete');    
insert into profession (name) VALUES ('designer');
insert into profession (name) VALUES ('driver');
insert into profession (name) VALUES ('cook');
insert into profession (name) VALUES ('pilot');
insert into profession (name) VALUES ('teacher');
SELECT * FROM profession;
alter table students_list drop column profession;
SELECT * FROM students_list;
ALTER TABLE students_list ADD COLUMN profession_id INT, ADD FOREIGN KEY (profession_id) REFERENCES profession(id);
SELECT * FROM students_list;
UPDATE students_list SET profession_id = 1 WHERE student_id = '1'; 
UPDATE students_list SET profession_id = 2 WHERE student_id = '2'; 
UPDATE students_list SET profession_id = 3 WHERE student_id = '3'; 
UPDATE students_list SET profession_id = 4 WHERE student_id = '4'; 
UPDATE students_list SET profession_id = 5 WHERE student_id = '5'; 
UPDATE students_list SET profession_id = 6 WHERE student_id = '6'; 
SELECT * FROM students_list;
SELECT first_name FROM students_list order by first_name;
SELECT first_name as fn FROM students_list order by fn;
SELECT students_list.first_name, students_list.surname, profession.name AS profession_name
FROM students_list INNER JOIN profession ON  students_list.profession_id = profession.id;










