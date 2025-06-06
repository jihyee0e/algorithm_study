SELECT CAR_ID, 
    CASE
    WHEN SUM(CASE 
                WHEN START_DATE <= '2022-10-16' AND 
                    '2022-10-16' <= END_DATE 
                THEN 1
                ELSE 0
                END) > 0
    THEN '대여중'
    ELSE '대여 가능'    
    END AS AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY 
GROUP BY CAR_ID