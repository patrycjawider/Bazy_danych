USE firma;
GO

SELECT P.id_pracownika, PE.kwota FROM ksiegowosc.pracownicy P
JOIN ksiegowosc.pensja PE ON P.id_pracownika = PE.id_pensji
WHERE PE.kwota > 1000;


