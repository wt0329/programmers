-- 코드를 입력하세요
SELECT TRUNCATE(PRICE, -4) AS "PRICE_GROUP"
     , COUNT(*) AS "PRODUCTS"
  FROM PRODUCT 
 GROUP BY PRICE_GROUP
 ORDER BY PRICE_GROUP ASC;

 /*
   - TRUNCATE 
     TRUNCATE(수, [자릿수]) : 수를 지정된 소수점 자리까지 버림하여 반환하는 함수
                            , 기본값은 0, 자릿수가 음수일 경우 지정된 정수부에서 버림
 */
