USE firma;
GO

SELECT P.imie, P.nazwisko, PE.kwota, PR.kwota FROM ksiegowosc.pracownicy P
JOIN ksiegowosc.pensja PE ON P.id_pracownika = PE.id_pensji
JOIN ksiegowosc.premia PR ON P.id_pracownika = PR.id_premii
ORDER BY PE.kwota DESC, PR.kwota DESC;
