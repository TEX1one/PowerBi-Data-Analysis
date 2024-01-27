SELECT gfuser_fullname AS Colaborador, AVG(tome_attending) AS sec, ROUND(AVG(time_attending/60),2) AS 'tempo_em_min'
FROM ****
WHERE gfqueuecounter_time BETWEEN CONCAT(DATE(NOW() - INTERVAL 730 DAY), '08:00:00') AND CONCAT(DATE(NOW()), '20:00:00')
GROUP BY gfuser_fullname