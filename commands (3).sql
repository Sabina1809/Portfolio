
CREATE TABLE doughnuts (
    name VARCHAR(10),
    type VARCHAR(10),
    price INT
);
INSERT INTO doughnuts VALUES ('klass', 'oily', 3);
INSERT INTO doughnuts VALUES ('apple', 'sweet', 5);
INSERT INTO doughnuts VALUES ('pineapple', 'creamy', 8);
INSERT INTO doughnuts VALUES ('banana', 'filled', 3);
SELECT * FROM doughnuts;
SELECT * FROM doughnuts WHERE type != 'oily';
SELECT * FROM doughnuts WHERE type<>'oily';
SELECT * FROM doughnuts WHERE price>5;
SELECT * FROM doughnuts WHERE price>= 5;
SELECT * FROM doughnuts WHERE type='filled'  OR price= 8;
SELECT * FROM doughnuts WHERE type='filled'  and price= 8;
SELECT * FROM doughnuts WHERE price IS NOT null;
SELECT * FROM doughnuts WHERE price is null;
SELECT * FROM doughnuts
WHERE type LIKE '%y';
SELECT * FROM doughnuts WHERE name LIKE '%pp%';
SELECT * FROM doughnuts WHERE price between 3 and 5;
SELECT * FROM doughnuts WHERE name in ('banana','apple');
