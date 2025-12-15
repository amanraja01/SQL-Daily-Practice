show databases;
create database  Day2;
-- to see output stament
select database();
use world;
-- numeric functions, dates
 select lifeexpectancy , round(lifeexpectancy) from country;  
select 82,62, round(83.687, 2);
select (456.23), round(476, -3);
select 456.67, round(456.68, 1), truncate(456.67,1), mod(43.6, 3);
select pow(2,3), ceil(3.0000000), floor(3.999999);
-- date 
-- inbuilt date ya data and time print krna
select now(), curdate(), current_timestamp(),  current_time();
select * from city;
-- add date 
select now(), adddate(now(),2), adddate(now(), interval -4 month);  
select now(), subdate(now(),2);
select now(), extract(week from now());
select now(), date_format( now(), 'month is %m year is %W');
select continent from country;
select distinct(continent) from country;
select name from country;
select count(name) from country;
