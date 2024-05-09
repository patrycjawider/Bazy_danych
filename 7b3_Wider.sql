USE AdventureWorks2022;
GO

CREATE OR ALTER TRIGGER taxRateMonitoring
ON Sales.SalesTaxRate
AFTER UPDATE
--modyfikacja triggeru po kazdej aktualizacji tabeli
AS
BEGIN
    DECLARE @nowy DECIMAL(10, 2);
    DECLARE @stary DECIMAL(10, 2);
	--deklaracja nowych zmiennych, dziesietne z 2 liczbami po przecinku
    SELECT @nowy= TaxRate FROM inserted; -- po aktualizacji
    SELECT @stary = TaxRate FROM deleted; -- przed aktualizacja
    IF ABS(@nowy - @stary) > (0.30 * @stary)
	--ABS o wartosc bezwzgledna 
    BEGIN
        RAISERROR('Zmiana Wartoœci w polu o wiêcej ni¿ 30%', 16, 1);
		-- priorytet 16, to blad o powaznym znaczeniu, wywolanie bledu zatrzymuje wykonanie zapytania
    END;
END;

SELECT * FROM Sales.SalesTaxRate;