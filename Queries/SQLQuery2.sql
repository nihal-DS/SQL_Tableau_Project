-- ## SQL Queries for Tableau

-- ## 1. Total cases, Total deaths and Death Percentage of the world
--Select 
--	SUM(new_cases) as total_cases
--	, SUM(cast(new_deaths as int)) as total_deaths
--	, SUM(cast(new_deaths as int)*1.0)/SUM(New_Cases)*100 as DeathPercentage
--From Project1..Covid_Deaths
----Where location like '%states%'
--where continent is not null 
----Group By date
--order by 1,2;

-- ## 2. Total deaths by continent
--Select 
--	location
--	, SUM(cast(new_deaths as int)) as TotalDeathCount
--From Project1..Covid_Deaths
----Where location like '%states%'
--Where continent is null 
--	  and location not in ('World'
--							,'European Union'
--							,'International'
--							,'High income'
--							,'Upper middle income'
--							,'Lower middle income'
--							,'Low income')
--Group by location
--order by TotalDeathCount desc;

-- or

--select
--	location,
--	max(total_deaths) as total_deaths
--from project1..covid_deaths
--where continent is null
--group by location
--having location in ('Europe', 'Asia', 'North America', 'South America', 'Africa', 'Oceania')
--order by total_deaths desc;

-- ## 3. Countries with the highest infection rate
--select 
--	location
--	, population
--	, MAX(total_cases) as highest_infection_count
--	, Max((total_cases*1.0/population))*100 as percent_population_infected
--from Project1..Covid_Deaths
----Where location like '%states%'
--group by location
--		 , population
--order by percent_population_infected desc;

-- ## 4. Infection rates in each country by date
select 
	location
	, population
	, date
	, max(total_cases) as highest_infection_count
	, max((total_cases*1.0/population))*100 as percent_population_infected
from Project1..Covid_Deaths
--Where location like '%states%'
group by Location
		 , Population
		 , date
order by location
		 , date;
--order by percent_population_infected desc;