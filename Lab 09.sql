SELECT * FROM estateagent5thed.client;

/* Q1 */
SELECT * FROM client WHERE email LIKE '%gmail%';

/* Q2 */
SELECT * FROM client WHERE 
maxrent BETWEEN 400 AND 700 ORDER BY email;

/* Q3 */
SELECT * FROM estateagent5thed.viewing;
SELECT * FROM viewing WHERE viewdate IS NOT NULL;
(SELECT DISTINCT propertyno FROM viewing);

/* Q4 */
SELECT * FROM staff INNER JOIN branch ON staff.Branchno = branch.branchno WHERE city = 'London';

/* Q5 */
SELECT * FROM propertyforrent 
INNER JOIN privateowner ON propertyforrent.ownerno = privateowner.ownerno 
INNER JOIN branch ON branch.branchno = propertyforrent.branchno
WHERE branch.city = 'Glasgow' AND propertyforrent.city = 'Glasgow' AND privateowner.address LIKE '%Glasgow%';
