-- 1.
SELECT ANIMAL_ID, NAME, SEX_UPON_INTAKE
FROM ANIMAL_INS
WHERE NAME = 'Lucy' OR NAME = 'Ella' OR NAME = 'Pickle'
  OR NAME = 'Rogan' OR NAME = 'Sabrina' OR NAME = 'Mitty'
ORDER BY ANIMAL_ID;

-- https://school.programmers.co.kr/questions/25496
-- 컬럼명 LIKE CONCAT('%', '검색할 문자열', '%')
-- 오 신기하다
SELECT ANIMAL_ID, NAME, SEX_UPON_INTAKE
FROM ANIMAL_INS
WHERE 'Lucy, Ella, Pickle, Rogan, Sabrina, Mitty'
  LIKE CONCAT('%', NAME, '%')
ORDER BY ANIMAL_ID;

-- 2.
SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE NAME LIKE '%el%' AND ANIMAL_TYPE = 'Dog'
ORDER BY NAME;

-- 3.
SELECT
  ANIMAL_ID, NAME,
  CASE
    WHEN SEX_UPON_INTAKE LIKE 'Neutered%' THEN 'O'
    WHEN SEX_UPON_INTAKE LIKE 'Spayed%' THEN 'O'
    ELSE 'X'
  END AS 중성화
FROM ANIMAL_INS
ORDER BY ANIMAL_ID;

-- 4.
-- DATEDIFF에 구분자 안 넣어도 되는데?
SELECT OUTS.ANIMAL_ID, OUTS.NAME
FROM ANIMAL_OUTS AS OUTS
INNER JOIN ANIMAL_INS AS INS
  ON OUTS.ANIMAL_ID = INS.ANIMAL_ID
ORDER BY DATEDIFF(OUTS.DATETIME, INS.DATETIME) DESC
LIMIT 2;

-- 5.
SELECT ANIMAL_ID, NAME,
  DATE_FORMAT(DATETIME, '%Y-%m-%d') AS 날짜
FROM ANIMAL_INS
ORDER BY ANIMAL_ID;