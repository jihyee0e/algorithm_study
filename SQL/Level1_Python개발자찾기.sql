'''
<DEVELOPER_INFOS 테이블에서 Python 스킬을 가진 개발자의 정보를 조회>
- Python 스킬을 가진 개발자의 ID, 이메일, 이름, 성을 조회하는 SQL 문을 작성
- ID 기준으로 오름차순 정렬
'''
SELECT ID, EMAIL, FIRST_NAME, LAST_NAME
FROM DEVELOPER_INFOS 
WHERE SKILL_1 = 'Python' or SKILL_2 = 'Python' or SKILL_3 = 'Python'
ORDER BY 1;