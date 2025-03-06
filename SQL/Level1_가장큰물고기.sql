-- 코드를 작성해주세요
# 잡은 물고기 중 가장 큰 물고기 출력하기
# 출력은 가장 큰 값 + cm
SELECT CONCAT(MAX(LENGTH), 'cm') AS MAX_LENGTH
FROM FISH_INFO;