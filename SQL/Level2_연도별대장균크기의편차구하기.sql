'''
<분화된 연도(YEAR), 분화된 연도별 대장균 크기의 편차(YEAR_DEV), 대장균 개체의 ID(ID) 출력>
- 분화된 연도별 대장균 크기의 편차는 분화된 연도별 가장 큰 대장균의 크기 - 각 대장균의 크기
- 연도에 대해 오름차순으로 정렬
- 같은 연도에 대해서는 대장균 크기의 편차에 대해 오름차순으로 정렬
'''
# SELECT YEAR(DIFFERENTIATION_DATE) YEAR, MAX(SIZE_OF_COLONY) OVER(PARTITION BY DIFFERENTIATION_DATE)-SIZE_OF_COLONY YEAR_DEV, ID
# FROM ECOLI_DATA
# ORDER BY YEAR, YEAR_DEV;
'''
위 코드는 오류
분석하기)
PARTITION BY DIFFERENTIATION_DATE vs PARTITION BY YEAR(DIFFERENTIATION_DATE)
-> 문제에서 요구한거는 "연도별"
단순히 DIFFERENTIATION_DATE로만 하게 된다면, 연도 뿐만 아니라 월/일도 다른 그룹으로 그룹화 되어버려서
문제에서 요구한 사항과 다름
따라서 year()로 묶어주면서 "연도별"이라는 조건 충족시켜줘야함
'''
-- SELECT YEAR(DIFFERENTIATION_DATE) YEAR, MAX(SIZE_OF_COLONY)-SIZE_OF_COLONY YEAR_DEV, ID
-- FROM ECOLI_DATA
-- ORDER BY YEAR, YEAR_DEV;
'''
위 코드는 오류
분석하기)
테스트 단계를 가지 못하고 문법 오류가 발생 -> MAX는 그룹화를 하지 않으면 사용할 수 없다.
즉, MAX()는 집계 함수이므로 그룹을 명확하게 지정하지 않으면 어떻게 최대값을 구해야 하는지 알 수 없음.
MAX()는 전체 데이터에서 하나의 값만 반환하고자 하는데, SIZE_OF_COLONY는 개별 값인데 동시에 들어가버려서 오류 발생
'''
SELECT YEAR(DIFFERENTIATION_DATE) YEAR, 
        MAX(SIZE_OF_COLONY) OVER(PARTITION BY YEAR(DIFFERENTIATION_DATE))-SIZE_OF_COLONY YEAR_DEV, ID
FROM ECOLI_DATA
ORDER BY YEAR, YEAR_DEV;