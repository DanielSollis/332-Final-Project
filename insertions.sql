delete from enrollment;
delete from section;
delete from course;
delete from student;
delete from department;
delete from professor;

-- PROFESSOR --------------------------------------------------------

INSERT INTO professor values ('123456789' , '714' ,  '2223344' , 'john smith' , 'M' , '1122 N State College st', 'Fullerton' , 'CA' , '92865' , 'associate professor' , 110000.00 , 'master of science in Computer Science');

INSERT INTO professor VALUES ('111223333' , '818' , '3334455' , 'jane doe' , 'F' , ' 800 N Cambrige St' , 'Anaheim' , 'CA' , '92807' , 'chair professor' , 90000.00 , 'doctorate in philosophy');

INSERT INTO professor VALUES ('999887777' , '949' , '9998877' , 'james murdoch' , 'M', '953 E Broadway Ave' , 'irvine' , 'CA' , '92949' , 'Emeritus professor' , 97000.00 , 'doctorate in compupter science');

-- DEPARTMENT -------------------------------------------------------

INSERT INTO department VALUES (1001 , '999887777' , 'Philosophy' , '7143334455' , '800 N State College Blvd Fullerton CA 92333 Building 222' );

INSERT INTO department VALUES (1002 , '111223333' ,'computer science' ,  '7143332211' , '800 N state college blvd fullerton ca 92333 Building 333');

-- STUDENT ----------------------------------------------------------

INSERT INTO student VALUES ('890112220',1001,'350 W Orangethorpe Ave Anaheim CA 92804' , '7141234500' , 'Bethany' , 'Quinn');

INSERT INTO student VALUES ('890112221',1001,'215 W Orangethorpe Ave Anaheim CA 92804' , '7141234501' , 'Hank' , 'Nolan');

INSERT INTO student VALUES ('890112222',1001,'908 W Orangethorpe Ave Anaheim CA 92804' , '7141234502' , 'Mona' , 'Mohan');
 
INSERT INTO student VALUES ('890112223',1001,'6820 W Orangethorpe Ave Anaheim CA 92804' , '7141234503' , 'David' , 'Mark');

INSERT INTO student VALUES ('890112224',1001,'543 W Orangethorpe Ave Anaheim CA 92804' , '7141234504' , 'Janice' , 'Abbott');

INSERT INTO student VALUES ('890112225',1002,'815 W Orangethorpe Ave Anaheim CA 92804' , '7141234505' , 'Marisa' , 'Rodgers');

INSERT INTO student VALUES ('890112226',1002,'1024 W Orangethorpe Ave Anaheim CA 92804' , '7141234506' , 'Edmond' , 'Zeller');

INSERT INTO student VALUES ('890112227',1002,'456 W Orangethorpe Ave Anaheim CA 92804' , '7141234507' , 'Vincent' , 'Willis');

INSERT INTO student VALUES ('890112228',1002,'912 W Orangethorpe Ave Anaheim CA 92804' , '7141234508' , 'David' , 'Mark');

INSERT INTO student VALUES ('890112229',1002,'350 W Orangethorpe Ave Anaheim CA 92804' , '7141234509' , 'Sabrina' , 'Evans');

-- COURSE -----------------------------------------------------------

INSERT INTO course VALUES (204100 , 1001 , 'Introduction To Philosophy' , 'Introduction to Philosophy by Perry' , 3);

INSERT INTO course VALUES (204101 , 1001 , 'Meaning, Purpose, and the Good Life' , 'Fundamentals of Philosophy by David Stewart' , 3);

INSERT INTO course VALUES (305123 , 1002 , ' Introduction to Programming' , 'STARTING OUT W/C++,EARLY OBJECTS by Gaddis' , 3);

INSERT INTO course VALUES (305121 , 1002 , 'Object-Oriented Programming' , 'Object Oriented Programming Using C++ by Joyce Farrel' , 3);

INSERT INTO course VALUES (305223 , 1002 , 'Java Programming' , ' Introduction to Programming in Java' , 3);

-- SECTION ----------------------------------------------------------

INSERT INTO section VALUES (1 , 204100 , '111223333' , 'MoWe' , 'Hum 125' , '10:30:00' , '11:45:00' , 26);

INSERT INTO section VALUES (2 , 204100 , '111223333' , 'MoWe' , 'Hum 125' , '12:00:00' , '13:15:00' , 26);

INSERT INTO section VALUES (1 , 204101 , '111223333' , 'TuTh' , 'Hum 126' , '8:00:00' , '09:45:00' , 30);

INSERT INTO section VALUES (2 , 204101 , '111223333' , 'TuTh' , 'Hum 126' , '10:00:00' , '11:15:00' , 30);


INSERT INTO section VALUES (1 , 305123 , '123456789' , 'MoWe' , 'CS 125' , '10:00:00' , '11:15:00' , 30);

INSERT INTO section VALUES (2 , 305123 , '123456789' , 'MoWe' , 'CS 125' , '14:00:00' , '15:15:00' , 30);

INSERT INTO section VALUES (1 , 305121 , '999887777' , 'TuTh' , 'CS 126' , '10:00:00' , '11:15:00' , 30);

INSERT INTO section VALUES (2 , 305121 , '999887777' , 'TuTh' , 'CS 126' , '14:00:00' , '15:15:00' , 30);


INSERT INTO section VALUES (1 , 305223 , '999887777' , 'MoWe' , 'CS 126' , '16:00:00' , '17:15:00' , 30);

INSERT INTO section VALUES (2 , 305223 , '999887777' , 'MoWe' , 'CS 126' , '18:00:00' , '19:15:00' , 30);


-- ENROLMENT --------------------------------------------------------

INSERT INTO enrollment VALUES (1 , 204100 , '890112220' , 'A');
INSERT INTO enrollment VALUES (1 , 204100 , '890112222' , 'C');
INSERT INTO enrollment VALUES (1 , 204100 , '890112224' , 'A');

INSERT INTO enrollment VALUES (2 , 204100 , '890112221' , null);
INSERT INTO enrollment VALUES (2 , 204100 , '890112223' , null);

INSERT INTO enrollment VALUES (1 , 204101 , '890112220' , 'B');
INSERT INTO enrollment VALUES (1 , 204101 , '890112222' , 'A');

INSERT INTO enrollment VALUES (2 , 204101 , '890112221' , null);
INSERT INTO enrollment VALUES (2 , 204101 , '890112223' , null);
INSERT INTO enrollment VALUES (2 , 204101 , '890112224' , null);

INSERT INTO enrollment VALUES (1 , 305123 , '890112225', 'A');
INSERT INTO enrollment VALUES (1 , 305123 , '890112227', 'B');
INSERT INTO enrollment VALUES (1 , 305123 , '890112229', 'B');

INSERT INTO enrollment VALUES (2 , 305123 , '890112226', 'C');
INSERT INTO enrollment VALUES (2 , 305123 , '890112228', 'C');

INSERT INTO enrollment VALUES (1 , 305223 , '890112225', 'A');
INSERT INTO enrollment VALUES (1 , 305223 , '890112227', 'A');

INSERT INTO enrollment VALUES (2 , 305223 , '890112228', 'B');
INSERT INTO enrollment VALUES (2 , 305223 , '890112229', 'A');
INSERT INTO enrollment VALUES (2 , 305223 , '890112226', 'A');

INSERT INTO enrollment VALUES (1 , 305121 , '890112225', 'B');
INSERT INTO enrollment VALUES (1 , 305121 , '890112227', 'A');

INSERT INTO enrollment VALUES (2 , 305121 , '890112228', 'B');
INSERT INTO enrollment VALUES (2 , 305121 , '890112226', 'A');
INSERT INTO enrollment VALUES (2 , 305121 , '890112229', 'A');
