USE firma;
GO

SELECT p.stanowisko AS Stanowisko, COUNT(pr.kwota) AS liczba_premii FROM ksiegowosc.pensja p
JOIN ksiegowosc.premia pr ON pr.id_premii = p.id_pensji
GROUP BY p.stanowisko;

