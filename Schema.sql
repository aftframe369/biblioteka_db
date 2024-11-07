create DATABASE biblioteka_lodzgorna;
use biblioteka_lodzgorna;

CREATE TABLE egzemplarz (
	ID int not null unique,

	ID_tytulu int(3) not null,
	ID_kategorii int(3) not null,
	Numer_tytulu int(2) not null,

	unique (ID_tytulu, ID_kategorii,numer_tytulu),
	primary key (ID),

	Constraint ID_w_zakresie check (
		ID >=0 and ID <= 99
)
); 

CREATE TABLE tytul (
	ID int unique not null,
	ID_w_kategorii int(3) unsigned not null ,
	Tytul varchar(255),
	Rok YEAR,
	Ilosc_stron int unsigned,
	Kategoria int,
	Wydawnictwo int,

	unique(kategoria, ID_w_kategorii),
	primary key (ID),

	Constraint ID_w_zakresie check (
		ID_w_kategorii >=0 and ID_w_kategorii <= 999
)
);

CREATE TABLE autor (
	ID int unique not null,
	Imie varchar(20),
	Nazwisko varchar(100),
	Uwagi varchar(255),

	primary key(ID)
);


CREATE TABLE autorzy_ksiazek (
	ID_autora int unique not null,
	ID_ksiazki int unique not null,

	primary key(ID_ksiazki, ID_autora)
);

CREATE TABLE kategoria (
	ID int(2) unique not null,
	Nazwa varchar(30) unique not null,

	primary key (ID)
);


CREATE TABLE podkategoria (
	ID int(2) not null primary key,
	Nazwa varchar(125) unique not null

);

CREATE TABLE relacje_podkategorii (
	-- ID kategorii lub podkategorii nadrzednej
	ID_kat_nad int(2),
	ID_podkat_nad int(2),
	ID_podkategorii int(2) not null,

	CONSTRAINT parent_is_child check (
		ID_podkat_nad != ID_podkategorii
	),

	Constraint has_parent check (
		ID_kat_nad is not null or ID_podkat_nad is not null
	)
);

CREATE TABLE wydawnictwo (
	ID int unique not null,
	Nazwa varchar(255) unique not null
);

CREATE TABLE pion (
	ID char(2) unique not null,
	Nazwa varchar(10) unique
);

CREATE TABLE ksiazki_w_pionach (
	ID_pionu char(2) not null,
	ID_tytulu int not null, 
	unique(ID_pionu, ID_tytulu),
	primary key(ID_pionu, ID_tytulu)
);

CREATE TABLE lokalizacja_ksiazek (
	ID_lokacji int unique not null,
	ID_egzemplarza int not null
);

CREATE TABLE miejsce (
	ID int(1) unique not null primary key,
	Nazwa varchar(20) unique not null
);

CREATE TABLE osoba (
	ID int unique not null,
	Nr_ewidencji char(11) unique,
	Przydzial char(15),
	Imie varchar(20) not null,
	Nazwisko varchar(20) not null,
	Nr_telefonu char(9) unique,
	Mail varchar(20) unique
);

CREATE TABLE uzytkownik (
	ID_osoby int unique not null primary key,
	Data_rejestracji DATE
);

CREATE TABLE bibliotekarz (
	ID_osoby int unique not null primary key,
	Rok_dolaczenia Date,
	Czy_w_disco bool
);

CREATE TABLE karta_wypozyczenia (
	ID_egzemplarza int not null,
	ID_osoby int not null,
	Data_wypozyczenia DATE,
	Data_oddania DATE default null
);



