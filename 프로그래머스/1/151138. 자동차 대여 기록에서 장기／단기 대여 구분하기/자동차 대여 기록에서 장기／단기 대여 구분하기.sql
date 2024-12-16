-- 코드를 입력하세요
SELECT HISTORY_ID
     , CAR_ID
     , DATE_FORMAT(START_DATE, '%Y-%m-%d') AS "START_DATE"
     , DATE_FORMAT(END_DATE, '%Y-%m-%d') AS "END_DATE"
     , CASE WHEN DATEDIFF(END_DATE, START_DATE) < 29 THEN '단기 대여' ELSE '장기 대여' END AS "RENT_TYPE" 
  FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
 WHERE START_DATE LIKE '2022-09%'
 ORDER BY HISTORY_ID DESC;
 
 -- DATEDIFF란?
 -- 두 날짜 사이의 차이를 반환하는 함수
 -- 문제에서 30일 이상 차이를 반환해야 하기 때문에 '끝 날짜 - 시작 날짜'