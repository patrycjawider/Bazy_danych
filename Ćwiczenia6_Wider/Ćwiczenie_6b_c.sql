USE firma;
GO


SELECT imie AS Imie, UPPER(nazwisko) AS Nazwisko FROM ksiegowosc.pracownicy
WHERE DATALENGTH(nazwisko) = (
SELECT MAX(DATALENGTH(nazwisko)) FROM ksiegowosc.pracownicy);

-- upper zmienia na drukowane litery
-- nie ma length!

