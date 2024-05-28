SELECT
a.trainerid,
a.starttime,
a.endtime
FROM TableA a
INNER JOIN TableA b ON a.trainerid = b.trainerid AND a.starttime != b.starttime
WHERE a.starttime <= b.endtime
OR b.endtime >= a.starttime
ORDER BY a.trainer_id, a.starttime