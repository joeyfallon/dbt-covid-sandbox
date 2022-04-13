SELECT 
    month,
    SUM(daily_confirmed_cases) as monthly_confirmed_cases,
    SUM(daily_deaths) as monthly_deaths
FROM {{ref('base_table')}}
GROUP BY month