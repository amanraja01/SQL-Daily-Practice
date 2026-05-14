-- 12-11
-- String Functions in SQL

-- world database use kar rahe hain
USE world;

---------------------------------------------------
-- UPPER() and LOWER()
---------------------------------------------------

-- UPPER(name) = name ko capital letters me convert karta hai
-- LOWER(name) = name ko small letters me convert karta hai

SELECT name, UPPER(name), LOWER(name)
FROM country;

---------------------------------------------------
-- CONCAT()
---------------------------------------------------

-- CONCAT() do ya more strings ko jodta hai

-- name aur code ko space ke sath join kar raha hai
SELECT name, code, CONCAT(name,'  ',code)
FROM country;

-- name aur code ko '&' symbol ke sath join kar raha hai
SELECT name, code, CONCAT(name,'&',code)
FROM country;

-- country table ka pura data show karega
SELECT *
FROM country;

---------------------------------------------------
-- SUBSTR()
---------------------------------------------------

-- SUBSTR(string, start)
-- string ko given position se cut karta hai

-- position 2 se string show karega
SELECT name, SUBSTR(name,2)
FROM country;

-- position 3 se string show karega
SELECT name, SUBSTR(name,3)
FROM country;

---------------------------------------------------
-- CHAR_LENGTH()
---------------------------------------------------

-- CHAR_LENGTH() total characters count karta hai

SELECT name, CHAR_LENGTH(name)
FROM country;

---------------------------------------------------
-- TRIM()
---------------------------------------------------

-- spaces ke sath string ki length
SELECT CHAR_LENGTH('  aman  ');

-- simple string display
SELECT '  aman  ';

-- TRIM() left aur right dono side ke spaces hata deta hai
SELECT CHAR_LENGTH(TRIM('  aman  '));

-- RTRIM() right side ke spaces remove karta hai
SELECT CHAR_LENGTH(RTRIM('  aman  '));

-- LTRIM() left side ke spaces remove karta hai
SELECT CHAR_LENGTH(LTRIM('    aman   '));

-- beech ke spaces remove nahi honge
SELECT CHAR_LENGTH(TRIM('     am  an'));

-- name ke start/end se 'A' remove karega
SELECT name, TRIM(BOTH 'A' FROM name)
FROM country;

---------------------------------------------------
-- LPAD() and RPAD()
---------------------------------------------------

-- Fixed size formatting ke liye use hota hai

SELECT name, population
FROM country;

-- population ke right side '#' add karega
-- total length 100 tak karega
SELECT name, population,
RPAD(population,100,'#')
FROM country;

---------------------------------------------------
-- REPLACE()
---------------------------------------------------

-- total characters count
SELECT CHAR_LENGTH('  kf  ka  ');

-- REPLACE(string, old, new)
-- 'am' ko 'akfj' se replace karega

SELECT REPLACE('   am  an  ', 'am', 'akfj');

-- replaced string ki total length count karega
SELECT CHAR_LENGTH(REPLACE('   am  an  ', 'am', 'akfj'));