USE firma;
GO

UPDATE ksiegowosc.pracownicy
SET telefon = CONCAT('+48', telefon)
WHERE telefon IS NOT NULL
SELECT * FROM ksiegowosc.pracownicy;

--concat ��czy dwa lub wi�cej ci�g�w znak�w w jeden