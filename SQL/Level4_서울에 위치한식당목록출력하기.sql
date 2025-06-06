SELECT RI.REST_ID, RI.REST_NAME, RI.FOOD_TYPE, 
    RI.FAVORITES, RI.ADDRESS,
    ROUND(AVG(RR.REVIEW_SCORE), 2) SCORE
FROM REST_INFO RI JOIN REST_REVIEW RR
ON RI.REST_ID = RR.REST_ID
WHERE SUBSTR(RI.ADDRESS, 1, 2) = '서울'  -- 서울특별시, 서울시
GROUP BY RI.REST_ID
ORDER BY 6 DESC, 4 DESC;