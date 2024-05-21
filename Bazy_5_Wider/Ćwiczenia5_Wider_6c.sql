USE firma;
GO

SELECT P.id_pracownika, PE.kwota, PR.kwota FROM ksiegowosc.pracownicy P
JOIN ksiegowosc.pensja PE ON P.id_pracownika = PE.id_pensji
JOIN ksiegowosc.premia PR ON P.id_pracownika = PR.id_premii
WHERE PE.kwota > 1000 AND PR.kwota IS NULL;
