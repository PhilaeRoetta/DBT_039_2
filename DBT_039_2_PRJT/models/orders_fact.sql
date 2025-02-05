with orders as (
    SELECT
        O.CUSTOMERID,
        SUM(OI.ORDER_REVENUE) AS CUSTOMER_REVENUE
    FROM
        {{ref('stg_orders')}} O
    LEFT JOIN
        {{ref('stg_orderitems')}} OI
        ON O.ORDERID = OI.ORDERID
    GROUP BY
        O.CUSTOMERID
)
SELECT * FROM orders