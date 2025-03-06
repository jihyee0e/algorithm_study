-- SELECT  COUNT(*)  AS COUNT
--   FROM  ECOLI_DATA A
--  WHERE  1=1
--         AND (2 != (GENOTYPE & 2)) 
--         AND (((4 & GENOTYPE) = 4) OR (( 1 & GENOTYPE ) = 1))

SELECT COUNT(*) AS COUNT
FROM ECOLI_DATA
WHERE GENOTYPE & 2 = 0  -- 2번 형질이 없는 경우
  AND (GENOTYPE & 1 != 0 OR GENOTYPE & 4 != 0);