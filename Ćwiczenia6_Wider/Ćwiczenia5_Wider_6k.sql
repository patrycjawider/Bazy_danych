USE firma;
GO 

SELECT stanowisko,  COUNT(*) AS Liczba_Os�b
FROM ksiegowosc.pensja
GROUP BY stanowisko;