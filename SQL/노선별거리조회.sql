'''
문제: 노선별로 노선, 총 누계 거리, 평균 역 사이 거리 조회
* 총 누계거리 기준으로 내림차순, 둘째자리에서 반올림
* 평균 역 사이 거리 셋째자리에서 반올림
'''

-- 코드를 작성해주세요
SELECT ROUTE,
        CONCAT(ROUND(SUM(D_BETWEEN_DIST), 1), 'km') AS TOTAL_DISTANCE,  # 둘째자리에서 반올림
        CONCAT(ROUND(AVG(D_BETWEEN_DIST), 2), 'km') AS AVERAGE_DISTANCE  # 셋째자리에서 반올림
FROM SUBWAY_DISTANCE
GROUP BY ROUTE
ORDER BY SUM(D_BETWEEN_DIST) DESC;  # 총 누계 기준 내림차순