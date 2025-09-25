
CREATE TABLE doughnuts (
    name VARCHAR(10),
    type VARCHAR(10),
    price INT
);
INSERT INTO doughnuts VALUES ('apple', 'sweet', 5);
INSERT INTO doughnuts VALUES ('pineapple', 'creamy', 8);
INSERT INTO doughnuts VALUES ('banana', 'filled', 3);
INSERT INTO doughnuts VALUES ('coconut', 'oily', 6);
INSERT INTO doughnuts VALUES ('veggy', 'filled', 10);
INSERT INTO doughnuts VALUES ('chocolate', 'creamy', 4);
SELECT * FROM doughnuts;
INSERT INTO doughnuts VALUES ('vanilla', 'sweet', 6);
INSERT INTO doughnuts VALUES ('strawberry', 'oily', 4);
INSERT INTO doughnuts VALUES ('peach', 'creamy', 5);
INSERT INTO doughnuts VALUES ('air', 'filled',2);
SELECT * FROM doughnuts;
SELECT * from doughnuts order by price;
SELECT * from doughnuts order by price desc;
SELECT SUM(price) FROM doughnuts;
SELECT min(price) FROM doughnuts;
SELECT max(price) FROM doughnuts;
SELECT avg(price) FROM doughnuts;
SELECT count(type) FROM doughnuts;
SELECT count(name) FROM doughnuts;
SELECT max(price) FROM doughnuts group by type;
SELECT type, max(price) FROM doughnuts group by type;
SELECT distinct type FROM doughnuts;
SELECT * from doughnuts order by price limit 5;
update doughnuts set name= 'pro' where name='air';
SELECT * from doughnuts;
delete from doughnuts where name = 'pro';
SELECT * from doughnuts;




