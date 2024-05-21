USE AdventureWorksLT2022;
GO

WITH SalesProduct AS(
	SELECT

		pc.Name AS Kategoria,
		p.StandardCost

		FROM 
		SalesLT.ProductCategory AS pc 
		JOIN 
		SalesLT.Product AS p ON p.ProductCategoryID = pc.ProductCategoryID
)

SELECT 
	Kategoria,
	SUM(StandardCost) AS Koszt

	FROM SalesProduct
	GROUP BY 
	Kategoria;
