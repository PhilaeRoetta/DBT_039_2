with orders as (
    SELECT
        CUSTOMERID,
        ORDERID
    FROM
        {{source('DBT0392','ord')}}
)
SELECT * FROM orders