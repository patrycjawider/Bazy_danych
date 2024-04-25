USE firma;
GO

DELETE FROM ksiegowosc.pensja WHERE kwota < 1200
SELECT p.kwota, pr.imie, pr.nazwisko FROM ksiegowosc.pensja p
JOIN ksiegowosc.pracownicy pr ON p.id_pensji = pr.id_pracownika;
