SELECT 
    biblio_auth_number AS biblionumber,
    title,
    time AS 'time queued'
FROM
    zebraqueue
    INNER JOIN biblio ON (zebraqueue.biblio_auth_number = biblio.biblionumber)
WHERE
    done=0
    AND server='biblioserver'
    AND operation = CONCAT( 'specialU', 'pdate' )
ORDER BY
    time
