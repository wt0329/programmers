-- 코드를 입력하세요
SELECT CAR_ID
     , ROUND(AVG(DATEDIFF(END_DATE, START_DATE) +1), 1) AS "AVERAGE_DURATION"
  FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
 GROUP BY CAR_ID -- CAR_ID로 평균을 내기 때문에 그룹화
HAVING AVERAGE_DURATION >= 7
 ORDER BY AVERAGE_DURATION DESC
        , CAR_ID DESC;
        
/*
 - DATEDIFF : 일수 차이를 구하는 함수
 - 1을 더하는 이유 : 1일부터 5일동안 대여한 경우에는 5-1 = 4일이 아닌, 꽉 채워서 대여한 것이기 때문에 5-1+1 = 5가 되기 때문
*/
  