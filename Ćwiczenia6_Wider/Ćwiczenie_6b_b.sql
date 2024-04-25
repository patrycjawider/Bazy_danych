USE firma;
GO


UPDATE ksiegowosc.pracownicy
SET telefon = CONCAT(
    SUBSTRING(telefon, 1, 3),
    '-',
    SUBSTRING(telefon, 4, 3),
    '-',
    SUBSTRING(telefon, 7, 3)
);
SELECT * FROM ksiegowosc.pracownicy;