create DATABASE biblioteka_lodzgorna;
use biblioteka_lodzgorna;


CREATE TABLE egzemplarz (
	CONSTRAINT Foreign Key 
); 

CREATE TABLE tytul (
	Id varchar(12),
	Tytul varchar(127),
	Rok YEAR,
	Ilosc_stron int,

	wydawnictwo varchar(4).

	foreign key wydawnictwo,
	foreign key kategoria,
	foreign key pion,
);

CREATE TABLE autorzy (
	Id varchar(5),
	Imie varchar(20),
	Nazwisko varchar(100),
	Uwagi varchar(255),
);

CREATE TABLE kategoria (
	Id varchar(2),
	Nazwa varchar(30),
	Pion varchar(20),

	foreign key Pion references pion(ID),
);

CREATE TABLE wydawnictwo (
	Id varchar(4),
);


CREATE TABLE podkategoria (
	Nazwa varchar(125) unique,

	foreign key Kategoria(),

	unique(kategoria, nr_podkategorii),
	primary key(kategoria, nr_podkategorii),



);

CREATE TABLE pion (),

CREATE TABLE miejsce (
	nazwa varchar(20),
);

CREATE TABLE osoba (
	id varchar(4),
	nr_ewidencji varchar(sprawdzić),
	przydzial
	imie
	nazwisko
);

CREATE TABLE uzytkownik (
	data_rejestracji DATE,


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



