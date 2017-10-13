-- Drop commands below are to get a clean slate

DROP TABLE department;
DROP TABLE student;
DROP TABLE minor;
DROP TABLE professor;
DROP TABLE course;
DROP TABLE section;
DROP TABLE enrollment;
DROP TABLE preReq;

-- Actual table creation commands

CREATE TABLE department(deptNo INT,
			chair CHAR(9) NOT NULL,
			name VARCHAR(30),
			phone CHAR(10),
			location VARCHAR(60),
			PRIMARY KEY(deptNo),
			FOREIGN KEY(chair) REFERENCES professor(SSN));
CREATE TABLE student(CWID CHAR(9),
	             deptNo INT NOT NULL,
		     address VARCHAR(70),
		     phone CHAR(10),
		     fName VARCHAR(15),
		     lName VARCHAR(25),
		     PRIMARY KEY(CWID),
		     FOREIGN KEY(deptNo) REFERENCES department(deptNo));
CREATE TABLE minor(deptNo INT,
		   CWID	CHAR(9),
		   PRIMARY KEY(deptNo, CWID),
		   FOREIGN KEY(deptNo) REFERENCES department(deptNo));
CREATE TABLE professor(SSN CHAR(9),
		       areaCode CHAR(3),
	               phoneNo CHAR(7),
                       name VARCHAR(40),
		       sex ENUM('M','F'),
		       street VARCHAR(50),
		       city VARCHAR(20),
		       state CHAR(2),
		       zip CHAR(5),
		       title VARCHAR(25),
                       salary DECIMAL(10, 2),
		       degree VARCHAR(50),
		       PRIMARY KEY(SSN));
CREATE TABLE course(courseNo INT,
		    deptNo INT NOT NULL,
		    title VARCHAR(50),
		    textbook VARCHAR(70),
		    units DECIMAL(2,1),
		    PRIMARY KEY(courseNo),
		    FOREIGN KEY(deptNo) REFERENCES department(deptNo));
CREATE TABLE section(sectionNo INT,
                     courseNo INT,
		     proffSSN CHAR(9) NOT NULL,
		     days VARCHAR(5),
		     classroom VARCHAR(8),
		     startTime TIME,
		     endTime TIME,
		     numSeats INT,
		     PRIMARY KEY(sectionNo, courseNo),
		     FOREIGN KEY(courseNo) REFERENCES course(courseNo),
		     FOREIGN KEY(proffSSN) REFERENCES professor(SSN));
CREATE TABLE enrollment(sectionNo INT,
			courseNo INT,
			CWID VARCHAR(9),
			grade ENUM('A','B','C','D','F','W'),
			PRIMARY KEY(sectionNo, courseNo, CWID),
			FOREIGN KEY(sectionNo) REFERENCES section(sectionNo),
			FOREIGN KEY(courseNo) REFERENCES course(courseNo),
			FOREIGN KEY(CWID) REFERENCES student(CWID));
CREATE TABLE preReq(preReqNo INT,
		    courseNo INT,
		    PRIMARY KEY(preReqNo, courseNo),
		    FOREIGN KEY(preReqNo) REFERENCES course(courseNo),
		    FOREIGN KEY(courseNo) REFERENCES course(courseNo));
