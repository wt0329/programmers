-- 코드를 입력하세요
SELECT T2.USER_ID
     , T2.NICKNAME
     , CONCAT(T2.CITY, ' ', T2.STREET_ADDRESS1, ' ', T2.STREET_ADDRESS2) AS "전체주소"
     , CONCAT(SUBSTR(T2.TLNO, 1, 3), '-', SUBSTR(T2.TLNO, 4, 4), '-', SUBSTR(T2.TLNO, 8, 4)) AS "전화번호"
  FROM USED_GOODS_BOARD T1
 INNER JOIN USED_GOODS_USER T2 ON (T1.WRITER_ID = T2.USER_ID)
 GROUP BY T1.WRITER_ID 
HAVING COUNT(T1.WRITER_ID) >= 3
 ORDER BY T2.USER_ID DESC;