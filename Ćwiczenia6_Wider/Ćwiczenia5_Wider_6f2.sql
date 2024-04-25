USE firma;
GO

SELECT SUM(kwota) AS suma_pensji, stanowisko FROM ksiegowosc.pensja
GROUP BY stanowisko;