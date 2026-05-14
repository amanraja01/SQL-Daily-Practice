-- 12-11
-- String Function
use world;

-- upper
select name, upper(name), lower(name) from country;

-- concat
select name, code, concat(name,'  ',code)from country;
select name, code, concat(name,'&',code) from country;
select * from country;

-- Sunstr
select name, substr(name,2), substr(name,2,-1) from country;
select name, substr(name,3)from country;

-- Char_langth
select name, char_length(name) from country;

-- Trim 
select char_length('  aman  ');
select '  aman  ';
select char_length(trim('  aman  '));
select char_length(rtrim('  aman  '));
select char_length(ltrim('    aman   '));
select char_length(trim('     am  an'));
select name, trim(both 'A' from name) from country;

-- lpad rpad
-- when we want to deine a column with fixed size
select name, population from country;
select name, population , rpad(population,100,'#') from country;

-- replace
select char_length('  kf  ka  ');
select length('   am  an  ', 'am', 'akfj');
SELECT char_length(REPLACE('   am  an  ', 'am', 'akfj'));








