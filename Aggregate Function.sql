-- 15-12
-- Aggregate Function

-- Aggregate Functions:
-- Ye multi-line functions hote hain jo multiple rows par calculation karke
-- ek single result return karte hain.

-- DISTINCT:
-- DISTINCT duplicate values ko remove karne ke liye use hota hai.

-- Country table se unique continents dikhana
select distinct continent from country;

-- Country table se continent aur region dikhana
select continent , region from country;

-- Unique continent aur region combinations dikhana
select distinct continent, region from country;


-- Aggregate Functions:
-- Ye set of rows par calculation perform karte hain.

-- IndepYear column ka data dekhna
select indepyear from country;

-- Sirf non-null IndepYear values count karega
select count(indepyear) from country;

-- Table ki total rows count karega
select count(*) from country;

-- Population column ki non-null values count karega
select count(population) from country;

-- Maximum population, total count, sum aur average population nikalna
select max(population),
       count(population),
       sum(population),
       avg(population)
from country;

-- Total continent values aur unique continents count karna
select count(continent),
       count(distinct Continent)
from country;


-- Asia continent ke countries ka name aur IndepYear dikhana
select name, indepyear
from country
where continent ='Asia';

-- Asia continent me unique IndepYear aur total rows count karna
select count(distinct IndepYear),
       count(*)
from country
where continent ='Asia';


-- 1947 ke baad aur 1998 se pehle independent hue countries ka:
-- total country count, total region count,
-- total population aur average life expectancy nikalna

select * from country;

select count(name),
       count(region),
       sum(population),
       avg(lifeexpectancy)
from country
where indepyear > 1947
and indepyear < 1998;


-- A aur D se start hone wale countries ka:
-- total countries, unique regions,
-- total population, life expectancy count aur total capital nikalna

select * from country;

select * from country
where name like 'a%'
or name like 'd%';

select count(name),
       count(distinct Region),
       sum(population),
       count(LifeExpectancy),
       sum(Capital)
from country
where name like 'a%'
or name like 'd%';


-- 17-12
-- GROUP BY:
-- Same values ko group/combine karne ke liye use hota hai.

-- Continent aur region ke basis par grouping karke country count nikalna
select continent,
       count(name)
from country
group by continent, Region;

-- Asia continent me 1950 ke baad independent hue countries count karna
select count(name)
from country
where Continent='Asia'
and IndepYear > 1950
group by Continent;

-- Har continent me total continents count karna
select count(continent)
from country
group by Continent;


-- ❌ Ye query wrong hai:
-- WHERE ke andar aggregate function use nahi kar sakte

-- select continent, count(name)
-- from country
-- where count(name)>30
-- group by Continent;


-- HAVING aggregate function ke saath use hota hai
-- Jinke country count 30 se zyada hain wo continents dikhana

select continent,
       count(name)
from country
group by Continent
having count(name) > 30;


-- 1920 ke baad independent hue countries ko
-- IndepYear ke basis par group karna

select indepyear,
       count(name)
from country
where IndepYear > 1920
group by IndepYear;


-- WHERE:
-- WHERE data ko filter karta hai before grouping.

-- HAVING:
-- HAVING grouped data ko filter karta hai after grouping.