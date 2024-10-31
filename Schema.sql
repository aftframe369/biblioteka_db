create DATABASE biblioteka_lodzgorna;
use biblioteka_lodzgorna;


CREATE TABLE egzemplarz (
	id int not null unique,
	id_w_kategori int(2) not null,

	Kategoria int(2) not null,
	Podkategoria_1 int(2) not null,
	Podkategoria_2 int(2) not null,
	Id_tytulu int(3) not null,

	unique (Kategoria, Podkategoria_1, Podkategoria_2, Id_tytulu, id ),
	primary key (Kategoria, Podkategoria_1, Podkategoria_2, Id_tytulu, id )
	Constraint kategoria >0 kategoria < 100
); 

CREATE TABLE tytul (
	Id int unique not null,
	ID_w_kategorii int unique not null,
	Tytul varchar(255),
	Rok YEAR,
	Ilosc_stron int,

	kategoria varchar(2),
	wydawnictwo varchar(4).
	pion varchar(1),

	unique(kategoria, ID_w_kategorii),
	primary key (Id)
	Constraint kategoria >0 kategoria < 100
);

CREATE TABLE autor (
	Id int(5) unique not null,
	Imie varchar(20),
	Nazwisko varchar(100),
	Uwagi varchar(255),

	primary key(Id)
);

CREATE TABLE kategoria (
	Id int(2) unique not null,
	Nazwa varchar(30) unique not null,

	Constraint kategoria >0 kategoria < 100
);

CREATE TABLE podkategoria (
	Id int(2) not null,
	Kategoria int(2) not null,
	Podkategoria_nadzredna int(2),
	Nazwa varchar(125) unique not null,

	unique(kategoria, nr_podkategorii),
	primary key(kategoria, nr_podkategorii),
);

CREATE TABLE wydawnictwo (
	Id int(4) unique not null,
	Nazwa varchar(255) unique not null,
);

CREATE TABLE pion (
	Nazwa char(2) unique not null,
);

CREATE TABLE miejsce (
	nazwa char(20) unique not null,
);

CREATE TABLE osoba (
	Id int(4) unique not null,
	Nr_ewidencji char(11) unique,
	Przydzial char(15),
	Imie varchar(20),
	Nazwisko varchar(20),
	Nr_telefonu char(9)
);

CREATE TABLE uzytkownik (
	id_osoby int(4) unique not null,
	data_rejestracji DATE,
);

CREATE TABLE bibliotekarz (
	Id_osoby int(4) unique not null,
	rok_dolaczenia Date,
	czy_w_disco bool,
);

CREATE TABLE karta_wypozyczenia (
	ksiazka_id int,
	osoba_id int,
	data_wypozyczenia DATE,
	data_oddania DATE,
)



