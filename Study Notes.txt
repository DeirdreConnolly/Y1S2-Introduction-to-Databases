-->	EXAM FORMAT/TOPICS
8 questions
SELECT FROM
JOIN
ORDER BY
GROUP BY
subqueries		aka nested query (SELECT within SELECT)


-->	OPERATORS
*		all
%		matches any possible character that might appear before/after the characters specified
_		similar to %, but for any single character
=		equal
>		greater than
<		less than
>=		greater than or equal to
<=		less than or equal to
<>		not equal to
LIKE	pattern matching operator
MIN		smallest value
MAX		largest value
SUM		sum of values
AVG		average
COUNT	total number of values
AND
OR
NOT


-->	STATEMENTS
SELECT
FROM
WHERE
GROUP BY
HAVING
ORDER BY
BETWEEN
AS
IN
ANY
ALL


-->	SAMPLES
#01	SELECT staffNo, fName, lName
	FROM staff;
	
#02	SELECT DISTINCT propertyNo						--> DISTINCT removes duplicates
	FROM Viewing;
	
#03	SELECT staffNo, salary/12 AS monthlySalary		--> divides salary by 12, places result in a new column
	FROM Staff
	WHERE salary BETWEEN 20000 AND 30000;
	
#04	SELECT *
	FROM branch
	WHERE city = "London" OR city = "Glasgow";

#05	WHERE position IN ("Manager", "Supervisor");	--> lists all managers and supervisors, could use OR instead

#06	WHERE address LIKE "%Glasgow%";
	
#07	WHERE comment IS NULL;

#08	ORDER BY salary DESC;

#09	ORDER BY type, rent DESC;						--> descends rent only, not type

#10	GROUP BY branchNo
	ORDER BY branchNo;
	
#11	WHERE branchNo = 
		(SELECT branchNo
		 FROM Branch
		 WHERE street = "163 Main St");
		
#11	WHERE salary > ALL
		(SELECT salary
		 FROM Staff
		 WHERE branchNo = "B003");
		
#12	SELECT * FROM propertyforrent 
	INNER JOIN privateowner ON propertyforrent.ownerno = privateowner.ownerno 
	INNER JOIN branch ON branch.branchno = propertyforrent.branchno
	WHERE branch.city = 'Glasgow' AND propertyforrent.city = 'Glasgow' AND privateowner.address LIKE '%Glasgow%';		
		
#13	SELECT column_name(s)
	FROM table_name1
	INNER JOIN table_name2
	ON table_name1.column_name = table_name2.column_name;
