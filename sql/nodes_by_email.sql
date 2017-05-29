SELECT
    NA.`email`,
    COUNT(N.`node_key`) amount
FROM
    `node` N
    LEFT JOIN `registered_participant` NA ON N.`node_key` = NA.`node_key`
GROUP BY NA.`email`
ORDER BY `amount` DESC


SELECT
    NA.`email`,
    COUNT(N.`node_key`) amount
FROM
    `node` N
    LEFT JOIN `registered_participant` NA ON N.`node_key` = NA.`node_key`
GROUP BY NA.`email`
HAVING `amount` <= 5
ORDER BY `amount` DESC
