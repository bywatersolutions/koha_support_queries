SELECT
    count(*),
    date(time_queued),
    letter_code,
    message_transport_type AS mtt,
    STATUS
FROM
    message_queue
    INNER JOIN
       (
                SELECT letter1 COLLATE utf8_unicode_ci AS letter_code FROM overduerules
            UNION
                SELECT letter2 COLLATE utf8_unicode_ci AS letter_code FROM overduerules
            UNION
                SELECT letter3 COLLATE utf8_unicode_ci AS letter_code FROM overduerules
       ) AS odr USING (letter_code)
GROUP BY
    date(time_queued), letter_code, mtt,STATUS
ORDER BY
    date(time_queued), letter_code, mtt,STATUS
