SELECT
    message_id,
    borrowernumber,
    subject,
    letter_code,
    message_transport_type,
    to_address,
    status,
    time_queued
FROM
    message_queue
WHERE
    DATE( time_queued ) = CURRENT_DATE
ORDER BY
    time_queued
