USE firma;
GO
CREATE SCHEMA ksiegowosc;
GO
-- tabela zawiera dane osobowe i kontaktowe do pracownikow
CREATE TABLE ksiegowosc.pracownicy(
	id_pracownika INT IDENTITY(1,1) PRIMARY KEY,
	imie VARCHAR(50) NOT NULL,
	nazwisko VARCHAR(50) NOT NULL,
	adres VARCHAR(50) NOT NULL,
	telefon VARCHAR(20)
	);
-- tabela zawiera dane o czasie pracy pracownikow
CREATE TABLE ksiegowosc.godziny(
	id_godziny INT IDENTITY(1,1) PRIMARY KEY,
	data_pracy DATE NOT NULL,
	liczba_godzin INT NOT NULL,
	id_pracownika INT NOT NULL
	);
-- tabela zawiera dane o wysokosci pensji pracownikow na okreslonych stanowiskach
CREATE TABLE ksiegowosc.pensja(
	id_pensji INT IDENTITY(1,1) PRIMARY KEY,
	stanowisko VARCHAR(40),
	kwota DECIMAL(8,2) NOT NULL
	);
-- tabela zawiera dane o premii dla pracownikow i jej rodzaju
CREATE TABLE ksiegowosc.premia(
	id_premii INT IDENTITY(1,1) PRIMARY KEY,
	rodzaj VARCHAR(50),
	kwota DECIMAL(8,2) 
	);
-- tabela zestawia dane z innych tabel 
CREATE TABLE ksiegowosc.wynagrodzenie(
	id_wynagrodzenia INT IDENTITY(1,1) PRIMARY KEY,
	data_pracy DATE,
	id_pracownika INT,
	id_godziny INT,
	id_pensji INT,
	id_premii INT
	);

ALTER TABLE ksiegowosc.godziny
ADD FOREIGN KEY (id_pracownika) REFERENCES ksiegowosc.pracownicy(id_pracownika);

ALTER TABLE ksiegowosc.wynagrodzenie
ADD FOREIGN KEY (data_pracy) REFERENCES ksiegowosc.godziny(data_pracy);
ALTER TABLE ksiegowosc.wynagrodzenie
ADD FOREIGN KEY (id_pracownika) REFERENCES ksiegowosc.pracownicy(id_pracownika);
ALTER TABLE ksiegowosc.wynagrodzenie
ADD FOREIGN KEY (id_godziny) REFERENCES ksiegowosc.godziny(id_godziny);
ALTER TABLE ksiegowosc.wynagrodzenie
ADD FOREIGN KEY (id_pensji) REFERENCES ksiegowosc.pensja(id_pensji);
ALTER TABLE ksiegowosc.wynagrodzenie
ADD FOREIGN KEY (id_premii) REFERENCES ksiegowosc.premia(id_premii);

