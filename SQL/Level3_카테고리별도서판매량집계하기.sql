'''
[문제]
2022년 1월의 카테고리 별 도서 판매량을 합산하고, 카테고리(CATEGORY), 총 판매량(TOTAL_SALES) 리스트를 출력하는 SQL문을 작성해주세요.
결과는 카테고리명을 기준으로 오름차순 정렬해주세요.

[풀이]
1) BOOK의 CATEGORY, BOOK_SALES의 총 판매량(SALES) 조회
2) 총 판매량은 TOTAL_SALES로 별칭
3) BOOK_SALES 테이블의 SALES_DATE에서 2022년 1월 조건 필터링(WHERE절)
4) SALES_DATE에서 연-월 형식만 추출하여 '2022-01'과 비교
5) 카테고리별 도서 판매량이므로 카테고리로 그룹화
6) 카테고리명 기준으로 오름차순 정렬하기
'''
SELECT B.CATEGORY, SUM(BS.SALES) TOTAL_SALES
FROM BOOK B JOIN BOOK_SALES BS ON B.BOOK_ID = BS.BOOK_ID
WHERE DATE_FORMAT(BS.SALES_DATE, '%Y-%m') = '2022-01'
GROUP BY B.CATEGORY
ORDER BY 1;