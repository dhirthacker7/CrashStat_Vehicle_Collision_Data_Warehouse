select *
from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME = N'stg_new_york'

-- Count queries to see data for each City 
-- in the Data Warehouse at every stage!

-- New York
select count(*) as Collisions from stg_new_york
select count(*) as Collisions from stg_cleaned_nyc
select count(*) as Collisions from stg_final_nyc

-- Chicago
select count(*) as Collisions from stg_chicago
select count(*) as Collisions from stg_Cleaned_chicago
select count(*) as Collisions from stg_final_chicago

-- Austin
select count(*) as Collisions from stg_austin
select count(*) as Collisions from stg_cleaned_austin
select count(*) as Collisions from stg_final_austin

-- top 1000 rows from each stage for each city

select count(*) as Collisions from stg_new_york
select count(*) as Collisions from stg_cleaned_nyc
select count(*) as Collisions from stg_final_nyc

select count(*) as Collisions from stg_chicago
select count(*) as Collisions from stg_Cleaned_chicago
select count(*) as Collisions from stg_final_chicago

select count(*) as Collisions from stg_austin
select count(*) as Collisions from stg_cleaned_austin
select count(*) as Collisions from stg_final_austin

