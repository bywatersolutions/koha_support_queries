SELECT
    letter_code,
    IF(
        to_address='' OR to_address IS NULL,
        "No email address",
        "Email address found"
    ) AS email,
    message_transport_type, 
    COUNT(*)
FROM
    message_queue
WHERE
    status='pending'
GROUP BY
    letter_code,
    email, 
    message_transport_type
