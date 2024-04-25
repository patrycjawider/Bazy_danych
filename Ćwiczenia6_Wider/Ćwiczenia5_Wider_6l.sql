USE firma;
GO

SELECT MIN(kwota) AS Najni¿sza_pensja,
MAX(kwota) AS Najwy¿sza_pensja,
AVG(kwota) AS Œrednia_pensja,
'Chemiczka' AS Stanowisko
FROM ksiegowosc.pensja
WHERE stanowisko = 'Chemiczka';
