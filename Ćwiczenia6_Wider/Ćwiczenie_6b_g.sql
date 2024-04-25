USE firma;
GO



SELECT 
	'Pracownik ' + p.imie + ' ' + p.nazwisko + ' w dniu ' + CONVERT(VARCHAR, g.data_pracy, 104) + ' otrzyma�a pensj� ca�kowit� na kwot� ' +
    CONVERT(VARCHAR, (pn.kwota + 
        COALESCE(pr.kwota, 0) +
        CASE 
            WHEN g.liczba_godzin > 160 THEN ((g.liczba_godzin - 160) * 50)
            ELSE 0
        END
    )) + ' z�, gdzie wynagrodzenie zasadnicze wynosi�o ' +
    CONVERT(VARCHAR, pn.kwota) + ' z�, premia: ' +
    COALESCE(CONVERT(VARCHAR, pr.kwota), 'Brak') + ' z�, nadgodziny ' +
    CONVERT(VARCHAR, CASE 
		WHEN g.liczba_godzin > 160 THEN ((g.liczba_godzin-160) * 50)
		ELSE 0
	END) + ' z�' AS Raport
FROM 
    ksiegowosc.pracownicy AS p
JOIN 
    ksiegowosc.pensja AS pn ON p.id_pracownika = pn.id_pensji
JOIN 
    ksiegowosc.premia AS pr ON p.id_pracownika = pr.id_premii
JOIN 
    ksiegowosc.godziny AS g ON p.id_pracownika = g.id_pracownika
