USE firma;
GO 

SELECT stanowisko,  COUNT(*) AS Liczba_Osób
FROM ksiegowosc.pensja
GROUP BY stanowisko;