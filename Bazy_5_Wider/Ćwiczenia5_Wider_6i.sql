USE firma;
GO

SELECT P.id_pracownika, P.imie, P.nazwisko, PE.kwota FROM ksiegowosc.pracownicy P
JOIN ksiegowosc.pensja PE ON P.id_pracownika = PE.id_pensji
ORDER BY PE.kwota;
