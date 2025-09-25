-- Agar jadval hali yo‘q bo‘lsa, uni yarating
CREATE TABLE IF NOT EXISTS friends (
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birth_date DATE,
    profession VARCHAR(50),
    interests VARCHAR(50)
);
INSERT INTO friends 
    (first_name, last_name, birth_date, profession, interests)
VALUES 
    ('Mirfayz', 'Irgashev', '2000-10-09', 'student', 'football');
SELECT * FROM friends;
INSERT INTO friends VALUES ('Malika', 'Hayatova', '2006-09-09', 'student', 'arts');
INSERT INTO friends VALUES ('Muhammad', 'Sultonov', '1999-10-15', 'engineer', 'cars');
INSERT INTO friends VALUES ('Inara', 'Turayeva', '1985-12-31', 'professor', 'cats');
INSERT INTO friends VALUES ('Said', 'Makhmatov', '2008-09-09', 'student', 'football');
SELECT * FROM friends;
INSERT INTO friends VALUES ('Coraline', 'Su', '2006-06-23', 'photographer', 'toys');
INSERT INTO friends VALUES ('Thomas', 'Barragan', '2005-12-30', 'striker', 'football');
SELECT * FROM friends;
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_name VARCHAR(50)
);
INSERT INTO orders VALUES (1, 'first order');
INSERT INTO orders VALUES (2, 'second order');
SELECT * from orders; 
INSERT into orders values (3, 'third order');
SELECT * from orders; 
CREATE TABLE orders_two (
    order_id SERIAL PRIMARY KEY,
    order_code VARCHAR(20)
);
INSERT INTO orders_two (order_code) VALUES ('first order');
INSERT INTO orders_two (order_code) VALUES ('second order');
INSERT INTO orders_two (order_code) VALUES ('third order');
SELECT * from orders_two;
select * from friends;
alter table friends add column friends_number Serial PRIMARY key;
select * from friends;
alter table friends rename to besties;
select * from besties;
alter table besties rename last_name to surname;
select * from besties;
alter table besties alter column surname type varchar (50);
alter table besties  alter column first_name set not null;
alter table besties add column age Int;
select *from besties;
alter table besties drop column age;
select *from besties;






