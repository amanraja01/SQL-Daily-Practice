--  10 Des. 
use world;
show tables;
select * from  country; 

select * from country where  Continent = 'Asia';
select * from city;
select * from city where name = 'kota';
select * from country where IndepYear="1919";

-- in
select * from country where IndepYear in(1919,1990);

-- between
select * from country where IndepYear between 1919 and 1990;

-- not
select * from country where IndepYear not between 1919 and 1990;
select * from country where IndepYear not in(1919,1990);

-- Like Operator
-- match a pattern 
-- naem => letter start,  letter include, letter end
-- 'A'

-- %: special charcter / wildcard characer
-- %: zero or more cahracter
-- _(underscore): only 1 charcter

select * from country where name like 'An%';
select * from country where name like '%a';
select * from country where name like '%r';
select * from country where name like '%ru%';
 select * from country where name like 'r%';
 select * from country where name not like '%r%';
 
select * from country where name like '____'; 
select * from country where name like '_u____';
select * from country where name like '_ua%';

-- Q get the the continet where where the continet start the letter n.
select * from country where Continent like 'n%';
-- Q get the the continet where where the continet second the letter p.
select * from country where Continent like '_p%';
-- Q get  the country and the continet where the continet have minimum for charchter.


  
