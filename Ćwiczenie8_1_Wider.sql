USE AdventureWorks2022;
GO

-- Usuniêcie tabeli tymczasowej, jeœli istnieje
IF OBJECT_ID('tempdb..TempEmployeeInfo') IS NOT NULL
    DROP TABLE #TempEmployeeInfo;


CREATE TABLE TempEmployeeInfo (
    EmployeeID INT,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    JobTitle NVARCHAR(50),
    Rate MONEY,
);


WITH PracownicyCTE AS (
    SELECT
        e.BusinessEntityID AS EmployeeID,
        p.FirstName,
        p.LastName,
        e.JobTitle,
        r.Rate
    FROM
        HumanResources.Employee AS e
    INNER JOIN
        Person.Person AS p ON e.BusinessEntityID = p.BusinessEntityID
    INNER JOIN
        HumanResources.EmployeePayHistory AS r ON e.BusinessEntityID = r.BusinessEntityID
)


INSERT INTO TempEmployeeInfo (EmployeeID, FirstName, LastName, JobTitle, Rate)
SELECT
    EmployeeID,
    FirstName, 
    LastName, 
    JobTitle, 
    Rate
FROM
    PracownicyCTE;


SELECT * FROM TempEmployeeInfo;
