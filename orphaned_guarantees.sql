SELECT
    CONCAT(firstname,' ', surname) AS name,
    borrowernumber,
    categorycode,
    guarantorid,
    CONCAT('<a href="/cgi-bin/koha/members/moremember.pl?borrowernumber=',borrowernumber,'">Link to account</a>') AS link 
FROM
    borrowers   
WHERE
    guarantorid!=0   
    AND guarantorid IS NOT NULL  
    AND guarantorid NOT in ( SELECT borrowernumber FROM borrowers )
