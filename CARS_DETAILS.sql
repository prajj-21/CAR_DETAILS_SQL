CREATE SCHEMA CARS;
use cars;
-- read data --
select *from `car dekho` ;
-- total cars : to get a count of total records -- 
select count(*)from `car dekho`;
-- cars available in 2023 --
select count(*) from `car dekho` where year= 2023;
-- how many cars available in 2020,2021,2022--
select count(*)from `car dekho` where year between 2020 and 2022;

select count(*)from `car dekho` where year = 2020;#74
select count(*)from `car dekho` where year = 2021;#7
select count(*)from `car dekho` where year = 2022;#7

-- Group BY -- 
SELECT COUNT(*)FROM `car dekho` where year IN (2020,2021,2022) group by year;

-- total of all cars by year -- 
select year,count(*)from `car dekho` group by year;

-- diesal car there in 2020?? -- 

select name ,count(*)
from `car dekho`
where fuel = "diesel" and year = 2020
group by name;

-- petrol car there in 2020 --

select name ,count(*)
from `car dekho`
where fuel = "petrol" and year = 2020
group by name;

 -- all the fuel cars (petol diesel cng) come by all year -- 
 
 select name,year ,count(*)
from `car dekho`
where fuel = "petrol"
group by name,year;

 select name,year ,count(*)
from `car dekho`
where fuel = "diesel"
group by name,year;

 select name,year ,count(*)
from `car dekho`
where fuel = "cng"
group by name,year;

-- more than 100 cars where given in a year, which year has more than 100 cars given --

select year,count(*) from `car dekho` group by year having count(*)>100;
select year,count(*) from `car dekho` group by year having count(*)>50;

-- all cars count details between 2015 and 2023, need a complete list -- 

select count(*)from `car dekho` where year between 2015 and 2023 ; 

-- all cars  details between 2015 and 2023, need a complete list -- 

select * from `car dekho` where year between 2015 and 2023 ; 

-------- END --------------- 

 

