USE master

CREATE TABLE Student(
    id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(100),
    grade INT
);