USE AdventureWorks2022;
GO

CREATE OR ALTER TRIGGER nazwisko
ON Person.Person FOR UPDATE AS
BEGIN
	UPDATE Person.Person SET LastName = UPPER(LastName);
END

INSERT INTO Person.Person(FirstName, LastName, BusinessEntityID, PersonType)
VALUES ('Amelia', 'Kwiatek', 20778, 'IN');