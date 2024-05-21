USE firma;
GO

INSERT INTO ksiegowosc.pracownicy(imie, nazwisko, adres, telefon) 
VALUES ('Filipina', 'P³askowicka', 'ul.Wiejska, £ódŸ', '123-456-789'),
('Pola', 'Negri', 'ul.Kwiatowa, Kraków', '111-222-333'),
('Justyna', 'Budziñska-Tylicka', 'ul.Prawa, Zabrze', '111-111-111'),
('Irena', 'Krzywicka', 'ul.Zmienna, Warszawa', '222-222-222'),
('Wanda', 'Rutkiewicz', 'ul.Górska, Zakopane', '444-444-444'),
('Maria', 'Sk³odowska-Curie',  'ul.Naukowa, Pary¿', '555-555-555'),
('Krystyna', 'Chojnowska-Liskiewicz', 'ul.¯eglarska, Gdañsk', '777-777-777'),
('Irena', 'Sendlerowa', 'ul.Pielêgniarek, Gorzów Wielkopolski', '888-888-888'),
('Maria', 'Konopnicka', 'ul.Literacka, Kielce', '234-345-456'),
('Eleonora', 'Ziemiêcka', 'ul.Filozofów, Szczecin','345-456-567');

INSERT INTO ksiegowosc.godziny(data_pracy, liczba_godzin, id_pracownika)
VALUES ('2024-01-01', 80, 1),
('2024-01-05', 180, 2),
('2023-11-07', 120, 3),
('2023-06-13', 170, 4),
('2021-09-27', 200, 5),
('2024-02-29', 100, 6),
('2022-01-12', 40, 7),
('2024-08-03', 135, 8),
('2022-10-09', 200, 9),
('2019-12-04', 130, 10);

INSERT INTO ksiegowosc.pensja(stanowisko, kwota)
VALUES ('Nauczycielka', 3000),
('Aktorka', 3000),
('Polityczka', 4000),
('T³umaczka', 1000),
('Sportowczyni', 6000),
('Chemiczka', 7000),
('¯eglarka', 8000),
('Pielêgniarka', 2100),
('Pisarka', 2980),
('Filozofka', 1400);

INSERT INTO ksiegowosc.premia(rodzaj, kwota)
VALUES ('uznaniowa', 200),
('uznaniowa', 300),
('uznaniowa', 400),
('miesiêczna', 360),
('uznaniowa', 600),
(NULL, NULL),
('uznaniowa', 200),
('uznaniowa', 900),
('za frekwencjê', 100),
('za frekwencjê', 100);

INSERT INTO ksiegowosc.wynagrodzenie(data_pracy)
VALUES ('2024-01-01'),
('2024-01-05'),
('2023-11-07'),
('2023-06-13'),
('2021-09-27'),
('2024-02-29'),
('2022-01-12'),
('2024-08-03'),
('2022-10-09'),
('2019-12-04');