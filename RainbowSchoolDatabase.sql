--create database RainbowSchoolDatabase
--go
use RainbowSchoolDatabase

CREATE TABLE Subjects (
    SubjectID  Int PRIMARY KEY ,
    SubjectName VARCHAR(50),
	TeacherName Varchar(50)
)
INSERT INTO Subjects  VALUES
(101, 'Math', 'Mr. Smith'),
(102, 'chem', 'Mrs. John'),
(103, 'Phisics', 'Mr. paul');

Select * from Subjects
-- Create Classes table
CREATE TABLE Classes (
    ClassID INT PRIMARY KEY ,
    ClassName VARCHAR(50),
	ClassFloor INT
)

INSERT INTO Classes  VALUES
(1, 'Class A', 1),
(2, 'Class B', 2),
(3, 'Class C', 3)

Select * from Classes
-- Create Students table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    ClassID INT FOREIGN KEY REFERENCES Classes(ClassID),
    Birthdate DATE,
    Gender VARCHAR(10),
	SubjectID  INT FOREIGN KEY REFERENCES Subjects(SubjectID)
    )

	INSERT INTO Students  VALUES
(1001, 'John', 'Doe', 001, '2000-01-15', 'Male', 101),
(1002, 'Jane', 'Smith', 002, '2000-03-20', 'Female',102),
(1003, 'Robert', 'Johnson',003, '1999-12-05', 'Male', 103);

Select * from Students
EXEC sp_help Classes


EXEC sp_help Students

EXEC sp_help Subjects