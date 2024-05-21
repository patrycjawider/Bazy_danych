USE AdventureWorksLT2022;
GO 


WITH SalesCTE AS (
    SELECT
        soh.SalesOrderID,
        soh.TotalDue,
        c.CompanyName AS NazwaFirmy
        
    FROM
        SalesLT.SalesOrderHeader AS soh
    INNER JOIN
        SalesLT.Customer AS c ON soh.CustomerID = c.CustomerID
    
    )


SELECT
    NazwaFirmy,
    SUM(TotalDue) AS Przychod
FROM
    SalesCTE
GROUP BY
    NazwaFirmy;
    

