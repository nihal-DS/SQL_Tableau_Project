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

--select
--	location,
--	population,
--	max(total_cases) as maximum_cases,
--	max(total_cases*1.0/population)*100 as percentage_infected
--from project1..covid_deaths
--group by location,
--		 population
--order by percentage_infected desc;

-- ## Countries with highest death counts
--select
--	location,
--	max(total_deaths) as maximum_deaths
--from project1..covid_deaths
--where continent is not null -- Only countries
--group by location
--order by maximum_deaths desc;

--select location, total_deaths from project1..covid_deaths
--where location = 'Scotland'; --??

-- ## Countries with highest death count per poulation
-- To cast one data type to int - cast([column_name] as int)
--select
--	location,
--	population,
--	max(total_deaths) as maximum_deaths,
--	max(total_deaths*1.0/population) as maximum_death_rate
--from project1..covid_deaths
--group by location,
--		 population
--order by maximum_death_rate desc;

-- ## Death rate by continent
--select
--	location,
--	max(total_deaths) as total_deaths
--from project1..covid_deaths
--where continent is null
--group by location
--having location in ('Europe', 'Asia', 'North America', 'South America', 'Africa', 'Oceania')
--order by total_deaths desc;

--select * from project1..covid_deaths;

