USE firma;
GO

SELECT P.imie, P.nazwisko, G.liczba_godzin, PR.kwota, 
	CASE 
		WHEN G.liczba_godzin > 160 THEN G.liczba_godzin-160
		ELSE 0
	END AS nadgodziny
FROM ksiegowosc.pracownicy P
JOIN ksiegowosc.godziny G ON P.id_pracownika = G.id_pracownika
JOIN ksiegowosc.premia PR ON P.id_pracownika = PR.id_premii
WHERE G.liczba_godzin > 160 AND PR.id_premii IS NULL;	
