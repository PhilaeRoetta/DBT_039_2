with customerorders as (
    SELECT
        CUSTOMERID,
        CUSTOMERNAME,
        NB_ORDER
    FROM
        {{ref('customer_orders')}}
),
orders_fact as (
    SELECT
        CUSTOMERID,
        CUSTOMER_REVENUE
    FROM
        {{ref('orders_fact')}}
)
SELECT
    C.CUSTOMERID,
    C.CUSTOMERNAME,
    C.NB_ORDER,
    O.CUSTOMER_REVENUE
FROM
    customerorders C
LEFT JOIN
    orders_fact O
    ON O.CUSTOMERID = C.CUSTOMERID