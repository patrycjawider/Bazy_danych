USE firma;
GO

SELECT P.imie, P.nazwisko, G.liczba_godzin,
	CASE 
		WHEN G.liczba_godzin > 160 THEN G.liczba_godzin-160
		ELSE 0
	END AS nadgodziny
FROM ksiegowosc.pracownicy P
JOIN ksiegowosc.godziny G ON P.id_pracownika = G.id_pracownika;
