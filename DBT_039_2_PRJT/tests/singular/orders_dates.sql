SELECT 
    * 
FROM 
    {{source('DBT0392','ord')}}
WHERE
    ORDERDATE < '2024-01-01'