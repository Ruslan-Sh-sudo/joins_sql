SELECT p.firstname, p.middlename, p.lastname, e.jobtitle, e.birthdate
    FROM person.person p
    JOIN humanresources.employee e
      ON (p.businessentityid = e.businessentityid)
ORDER BY p.firstname ASC;

SELECT p.firstname, p.lastname,
(SELECT e.jobtitle
   FROM humanresources.employee e
  WHERE p.businessentityid = e.businessentityid) AS jobtitle
   FROM person.person p;


SELECT * FROM(
SELECT p.firstname, p.lastname,
(SELECT e.jobtitle
   FROM humanresources.employee e
  WHERE p.businessentityid = e.businessentityid) AS jobtitle
   FROM person.person p) AS table1
   WHERE jobtitle IS NOT null;
   
    SELECT p.firstname, p.lastname, e.jobtitle
      FROM person.person p
CROSS JOIN humanresources.employee e;

SELECT COUNT(*) FROM
(SELECT p.firstname, p.lastname, e.jobtitle
      FROM person.person p
CROSS JOIN humanresources.employee e) AS counting;
   