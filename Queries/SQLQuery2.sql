-- ## SQL Queries for Tableau

-- ## 1. Total cases, Total deaths and Death Percentage
Select 
	SUM(new_cases) as total_cases
	, SUM(cast(new_deaths as int)) as total_deaths
	, SUM(cast(new_deaths as int)*1.0)/SUM(New_Cases)*100 as DeathPercentage
From Project1..Covid_Deaths
--Where location like '%states%'
where continent is not null 
--Group By date
order by 1,2