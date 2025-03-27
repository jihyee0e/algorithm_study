'''
<희귀도가 "LEGEND"인 아이템들의 가격의 총합을 구하는 SQL문 작성>
- 컬럼명은 TOTAL_PRICE
[풀이]
1) 가격의 총합 SUM(PRICE)
2) 컬럼명 별칭 이용해서 바꿔주기
3) 희귀도가 "LEGEND"인 조건이 필요하므로 WHERE 문 작성
'''
SELECT SUM(PRICE) TOTAL_PRICE
FROM ITEM_INFO
WHERE RARITY='LEGEND';