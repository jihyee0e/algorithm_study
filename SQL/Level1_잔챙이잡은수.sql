'''
문제: 잡은 물고기 길이가 10cm 이하인 경우 LENGTH가 NULL
잡은 물고기 중 길이가 10cm 이하인 물고기 수 출력
물고기 수 나타내는 컬럼명은 FISH_COUNT로 해주기
'''
SELECT COUNT(ID) AS FISH_COUNT
FROM FISH_INFO
WHERE LENGTH IS NULL;  # 길이가 10이하인 경우는 NULL인데 구하는 것도 10이하 이므로 NULL로 조건 보면 됨