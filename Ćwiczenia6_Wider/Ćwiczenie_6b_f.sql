USE firma;
GO


SELECT pr.imie, pr.nazwisko, pe.kwota AS pensja, pre.kwota AS premia FROM ksiegowosc.pracownicy pr
LEFT JOIN ksiegowosc.pensja pe ON pr.id_pracownika = pe.id_pensji
LEFT JOIN ksiegowosc.premia pre ON pr.id_pracownika = pre.id_premii;