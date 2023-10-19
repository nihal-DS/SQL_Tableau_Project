-- To comment lines use ctrl+k then ctrl+c
-- Object explorer in View

--SELECT TOP 10 *
--FROM Project1..Covid_Deaths;

--SELECT COUNT(COLUMN_NAME) 
--FROM INFORMATION_SCHEMA.COLUMNS 
--WHERE TABLE_NAME = 'Covid_Deaths';

-- ## Counting number of rows in covid_deaths
--SELECT COUNT(*)
--FROM Project1..Covid_Deaths;
-- 348563

-- ## Counting number of rows in covid_vaccinations
--SELECT COUNT(*)
--FROM Project1..Covid_Deaths;
-- 348563

-- ## Order by column number
--SELECT *
--FROM Project1..Covid_Deaths
--ORDER BY 3, 4;

--select location, date, total_cases, new_cases, total_deaths, population
--from project1..covid_deaths
--order by location, date;

-- ## Percentage of people who died (death rate)
--select 
--	location, 
--	date, 
--	total_cases, 
--	new_cases, 
--	total_deaths, 
--	population,
--	(total_deaths*1.0/total_cases) * 100 as percentage_death
--from project1..covid_deaths
--where location = 'India'
--order by location, 
--		 date;

-- ## Total cases vs population (Percentage infected in country)
--select
--	location,
--	date,
--	total_cases,
--	population,
--	(total_cases * 1.0/population) * 100 as percentage_infected
--from project1..covid_deaths
--where location = 'India'
--order by location,
--		 date;

--select
--	location,
--	date,
--	total_cases,
--	population,
--	(total_cases * 1.0/population) * 100 as percentage_infected
--from project1..covid_deaths
--order by percentage_infected desc;

-- ## Looking at countries with highest infection rate
--select
--	location,
--	population,
--	max(total_cases) as maximum_cases,
--	max(total_cases*1.0/population)*100 as percentage_infected
--from project1..covid_deaths
--group by location,
--		 population
--order by population desc;

select
	location,
	population,
	max(total_cases) as maximum_cases,
	max(total_cases*1.0/population)*100 as percentage_infected
from project1..covid_deaths
group by location,
		 population
order by percentage_infected desc;

