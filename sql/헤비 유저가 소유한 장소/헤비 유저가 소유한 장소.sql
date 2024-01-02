SELECT *
FROM PLACES 
WHERE HOST_ID IN (
    select HOST_ID
    from PLACES 
    group by HOST_ID
    having count(*) >= 2

);