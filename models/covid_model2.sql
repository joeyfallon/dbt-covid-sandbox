{{ config(materialize='view')}}

SELECT *
FROM {{ref('covid_model1')}}
ORDER BY date DESC
LIMIT 5