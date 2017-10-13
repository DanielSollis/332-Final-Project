SELECT 	distinct C.title , S.classroom , S.days , S.startTime , S.endTime
FROM 	professor P , section S , course C
WHERE 	P.SSN = S.proffSSN 
	AND S.courseNo = C.courseNo
	AND P.SSN = '123456789';


SELECT 	E.grade , count(E.grade)
FROM 	enrollment E 
WHERE 	E.courseNo = 204101 AND E.sectionNo = 1
GROUP BY E.grade;


SELECT 	S.classroom, S.days, S.startTime, S.EndTime, COUNT(E.CWID) AS 'student count'
FROM 	enrollment E, section S
WHERE	S.courseNo = 204101 
	AND E.courseNo = S.courseNo 
	AND E.sectionNo = S.sectionNo
GROUP BY E.sectionNo, E.courseNo;


SELECT 	distinct C.title, E.grade
FROM 	enrollment E, course C
WHERE 	E.CWID = '890112226' 
	AND E.courseNo = C.courseNo;

