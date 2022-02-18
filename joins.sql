SELECT p.firstname, p.middlename, p.lastname, e.jobtitle, e.birthdate
    FROM person.person p 
    JOIN humanresources.employee e 
      ON (p.businessentityid = e.businessentityid)
ORDER BY p.firstname ASC;

