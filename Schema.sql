create DATABASE biblioteka_lodzgorna;
use biblioteka_lodzgorna;

CREATE TABLE egzemplarz (
	Id varchar(12);
); 

CREATE TABLE tytul (
	Id varchar(12);
	Tytul varchar(127);
	Rok YEAR;
	Ilosc_stron int;

	foreign key wydawnictwo;
	foreign key kategoria;
	foreign key pion;
);

CREATE TABLE autorzy (
	Id varchar(5);
	Imie varchar(20);
	Nazwisko varchar(100);
	Uwagi varchar(255);
);

CREATE TABLE kategoria (
	Id varchar(2);
	Nazwa varchar(30);

	foreign key id_pionu();
);

CREATE TABLE wydawnictwo (
	Id varchar(4);
);

CREATE TABLE pion ();

CREATE TABLE podkategoria (
	Id	varchar(4);
	Nazwa varchar(125);

	foreign key Kategoria();

);

CREATE TABLE miejsce (
	nazwa varchar(20);
);

CREATE TABLE osoba (
	id varchar(4);
	nr_ewidencji varchar(sprawdzić);
	przydzial
	imie
	nazwisko
);

CREATE TABLE uzytkownik (
	id_osoby
);

CREATE TABLE bibliotekarz (
	rok_dolaczenia
	czy_w_disco
);


CREATE TABLE karta_wypozyczenia (
	ksiazka
	osoba
	data wypozyczenia
	data oddania
)



