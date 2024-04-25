USE firma;
GO

SELECT 
    pr.imie, 
    pr.nazwisko, 
    HASHBYTES('MD5', CONCAT(imie, nazwisko)) AS kodowane_imie_nazwisko,
    HASHBYTES('MD5', CONVERT(VARCHAR, kwota)) AS kodowana_pensja
FROM 
    ksiegowosc.pracownicy pr
	JOIN ksiegowosc.pensja pe ON pr.id_pracownika = pe.id_pensji;