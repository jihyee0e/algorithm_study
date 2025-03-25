'''
[문제]
<대여 시작일이 2022년 9월에 속하는 대여 기록에 대해서 "장기 대여". "단기 대여" 표시하는 컬럼(컬럼명: RENT_TYPE)을 추가하여 대여기록을 출력하는 SQL문을 작성>
- 대여 기록 ID 기준으로 내림차순 정렬
'''
SELECT HISTORY_ID, CAR_ID, 
    	DATE_FORMAT(START_DATE, '%Y-%m-%d') START_DATE, 
    	DATE_FORMAT(END_DATE, '%Y-%m-%d') END_DATE,
    CASE
        WHEN DATEDIFF(END_DATE, START_DATE)+1 >= 30 THEN '장기 대여'
        ELSE '단기 대여'
    END AS RENT_TYPE
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE DATE_FORMAT(START_DATE, '%Y-%m') IN ('2022-09')
ORDER BY 1 DESC;