USE firma;
GO

UPDATE ksiegowosc.pracownicy
SET telefon = CONCAT('+48', telefon)
WHERE telefon IS NOT NULL
SELECT * FROM ksiegowosc.pracownicy;

--concat ³¹czy dwa lub wiêcej ci¹gów znaków w jeden