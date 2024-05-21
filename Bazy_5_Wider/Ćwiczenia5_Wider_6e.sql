USE firma;
GO

SELECT imie, nazwisko FROM ksiegowosc.pracownicy
WHERE nazwisko LIKE '%n%' AND imie LIKE '%a';
