with orders as (
    SELECT
        ORDERID,
        QUANTITY * UNITPRICE AS ORDER_REVENUE
    FROM
        {{source('DBT0392','item')}}
)
SELECT * FROM orders