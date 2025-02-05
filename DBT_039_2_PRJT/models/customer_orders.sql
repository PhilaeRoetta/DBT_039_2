with customerorders as (
    SELECT
        C.CUSTOMERID,
        CONCAT(C.FIRSTNAME, ' ', C.LASTNAME) AS CUSTOMERNAME,
        COUNT(O.ORDERID) AS NB_ORDER
    FROM
        {{source('DBT0392','cust')}} C
    LEFT JOIN
        {{source('DBT0392','ord')}} O
        ON O.CUSTOMERID = C.CUSTOMERID
    GROUP BY
        C.CUSTOMERID,
        C.FIRSTNAME,
        C.LASTNAME
)
SELECT * FROM customerorders