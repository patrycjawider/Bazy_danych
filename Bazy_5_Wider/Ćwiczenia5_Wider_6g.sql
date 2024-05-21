USE firma;
GO

SELECT P.id_pracownika, P.imie, P.nazwisko, PE.kwota FROM ksiegowosc.pracownicy P
JOIN ksiegowosc.pensja PE ON P.id_pracownika = PE.id_pensji
WHERE PE.kwota BETWEEN 1500 AND 3000;
