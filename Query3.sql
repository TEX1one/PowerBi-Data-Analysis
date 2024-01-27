SELECT COUNT(gfqueue_desc) AS total, gfqueue_desc, SUBSTRING(CONVERT(gfqueuecounter_time, TIME),1,2) AS hora
FROM ***
WHERE gfqueuecounter_time > '09:00:00' and gfqueuecounter_time < ' 18:00:00'
GROUP BY gfqueue_desc, hora
ORDER BY hora ASC