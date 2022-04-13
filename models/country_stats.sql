SELECT 
    countries_and_territories as country,
    SUM(daily_deaths) as death_count,
    SUM(daily_confirmed_cases) as total_cases,
    AVG(daily_deaths) as avg_deaths,
    AVG(daily_confirmed_cases) as avg_cases
FROM {{ref('base_table')}}
GROUP BY country