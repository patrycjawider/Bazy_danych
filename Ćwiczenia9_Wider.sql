

--zadanie 1 (1431.50) (1574.65)
USE AdventureWorks2022;
GO
BEGIN TRANSACTION;
UPDATE Production.Product SET ListPrice = ListPrice * 1.10 WHERE ProductID = 680
COMMIT TRANSACTION;
SELECT ProductID, ListPrice FROM Production.Product;

-- zadanie 2
USE AdventureWorks2022;
GO
BEGIN TRANSACTION;
DELETE FROM Production.Product WHERE ProductID = 707
ROLLBACK TRANSACTION;

-- zadanie 3
USE AdventureWorks2022;
GO
BEGIN TRANSACTION;
INSERT INTO Production.Product (Name, ProductNumber, MakeFlag, FinishedGoodsFlag, Color, SafetyStockLevel, ReorderPoint, StandardCost, ListPrice, Size, SizeUnitMeasureCode, WeightUnitMeasureCode, Weight, DaysToManufacture, ProductLine, Class, Style, ProductSubcategoryID, ProductModelID, SellStartDate, SellEndDate, DiscontinuedDate, rowguid, ModifiedDate)
VALUES ('New Product', 'NP-001', 1, 1, 'Red', 100, 75, 12.00, 15.00, 'M', NULL, NULL, NULL, 0, 'T', 'H', 'U', NULL, NULL, GETDATE(), NULL, NULL, NEWID(), GETDATE());
COMMIT TRANSACTION;
SELECT * FROM Production.Product;

-- zadanie 4

    BEGIN TRANSACTION;
    UPDATE Production.Product
    SET StandardCost = StandardCost * 1.10;
    
    DECLARE @TotalStandardCost MONEY;
    SELECT @TotalStandardCost = SUM(StandardCost) FROM Production.Product;
    IF @TotalStandardCost <= 50000
    BEGIN
        COMMIT TRANSACTION;
        PRINT 'Transakcja zatwierdzona. Suma StandardCost wynosi: ' + CAST(@TotalStandardCost AS NVARCHAR(50)); --konwersja typu
    END
    ELSE
    BEGIN
        ROLLBACK TRANSACTION;
        PRINT 'Transakcja wycofana. Suma StandardCost przekracza 50000. Aktualna suma: ' + CAST(@TotalStandardCost AS NVARCHAR(50));
    END




-- zadanie 5
USE AdventureWorks2022;
GO

BEGIN TRANSACTION;
IF EXISTS (SELECT 1 FROM Production.Product WHERE ProductNumber = 'NP-001')
BEGIN
    ROLLBACK TRANSACTION;
    PRINT 'Produkt ju¿ istnieje. Transakcja wycofana.';
END
ELSE
BEGIN
    INSERT INTO Production.Product (Name, ProductNumber, MakeFlag, FinishedGoodsFlag, Color, SafetyStockLevel, ReorderPoint, StandardCost, ListPrice, Size, SizeUnitMeasureCode, WeightUnitMeasureCode, Weight, DaysToManufacture, ProductLine, Class, Style, ProductSubcategoryID, ProductModelID, SellStartDate, SellEndDate, DiscontinuedDate, rowguid, ModifiedDate)
    VALUES ('New Product2', 'NP-001', 1, 1, 'Red', 100, 75, 12.00, 15.00, 'M', NULL, NULL, NULL, 0, 'T', 'H', 'U', NULL, NULL, GETDATE(), NULL, NULL, NEWID(), GETDATE());
    COMMIT TRANSACTION;
    PRINT 'Nowy produkt dodany. Transakcja wykonana';
END


-- zadanie 6

USE AdventureWorks2022;
GO

BEGIN TRANSACTION;
IF EXISTS (SELECT 1 FROM Sales.SalesOrderDetail WHERE OrderQty = 0)
BEGIN 
ROLLBACK TRANSACTION
PRINT('Wartoœæ OrderOty jest równa 0. Transakcja wycofana.');
END
ELSE 
BEGIN 
UPDATE Sales.SalesOrderDetail SET OrderQty = OrderQty + 5;
COMMIT TRANSACTION;
PRINT ('Transakcja wykonana');
END

-- zadanie 7

USE AdventureWorks2022;
GO
BEGIN TRANSACTION;
DECLARE @usuniecie INT;
SELECT @usuniecie = COUNT(*) FROM Production.Product WHERE StandardCost > (SELECT AVG(StandardCost) FROM Production.Product);
IF @usuniecie > 10
BEGIN
    ROLLBACK TRANSACTION;
    PRINT 'Transakcja wstrzymana';
END
ELSE
BEGIN
    DELETE FROM Production.Product WHERE StandardCost > (SELECT AVG(StandardCost) FROM Production.Product);
    COMMIT TRANSACTION;
    PRINT 'Transakcja wykonana';
END

