SELECT
    DATE_FORMAT(gfqueuecounter_time, '%d %b') AS Day,
    COUNT(*) AS total
FROM ****
WHERE gfqueuecounter_time BETWEEN CONCAT(DATE(NOW() - INTERVAL 14 DAYS), '09:00:00') and CONCAT(DATE(NOW()), '20:00:00')
GROUP BY DAY
ORDER BY DAY ASC
