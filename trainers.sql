SELECT DISTINCT
    currentClass.trainerid,
    currentClass.starttime,
    currentClass.endtime
FROM 
    TableA AS currentClass
    INNER JOIN TableA AS compaisonClass 
        ON currentClass.trainerid = compaisonClass.trainerid 
        AND currentClass.starttime != compaisonClass.starttime
WHERE 
    currentClass.starttime < compaisonClass.endtime
    AND compaisonClass.endtime >= currentClass.starttime

ORDER BY 
    currentClass.trainer_id, 
    currentClass.starttime;