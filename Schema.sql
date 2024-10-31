create DATABASE biblioteka_lodzgorna;
use biblioteka_lodzgorna;


CREATE TABLE egzemplarz (
	id int not null,

	Id_tytulu int(3) not null,

	unique (Id_tytulu, id ),
	primary key (Id_tytulu, id ),

	Constraint id_w_zakresie check (
		id >=0 and id <= 99
)
); 

CREATE TABLE tytul (
	Id int unsigned unique not null,
	ID_w_kategorii int(3) unsigned not null ,
	Tytul varchar(255),

	Rok YEAR,
	Ilosc_stron int unsigned,

	kategoria varchar(2),
	wydawnictwo varchar(4).

	unique(kategoria, ID_w_kategorii),
	primary key (Id),

	Constraint id_w_zakresie check (
		ID_w_kategorii >=0 and ID_w_kategorii <= 999
)
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

	Constraint id_w_zakresie check (
		Id >=0 and Id <= 99
)
);


-- To trzeba wymyśliiić!!
-- CREATE TABLE podkategoria (
-- 	Id int(2) not null,
-- 	Parent int(2) not null,
-- 	Nazwa varchar(125) unique not null,
--
-- 	unique(Parent , Id ),
-- 	unique(Parent , Nazwa),
-- 	primary key(Kategoria, Id),
--
--
-- 	Constraint id_w_zakresie check (
-- 		Id >=0 and Id <= 99
-- )
-- );

CREATE TABLE wydawnictwo (
	Id int(4) unique not null,
	Nazwa varchar(255) unique not null,
);

CREATE TABLE pion (
	Nazwa char(2) unique not null,
);

CREATE TABLE miejsce (
	nazwa varchar(20) unique not null,
);

CREATE TABLE osoba (
	Id int(4) unique not null,
	Nr_ewidencji char(11) unique,
	Przydzial char(15),
	Imie varchar(20) not null,
	Nazwisko varchar(20) not null,
	Nr_telefonu char(9) unique,
	mail varchar(20) unique
);

CREATE TABLE uzytkownik (
	id_osoby int(4) unique not null primary key,
	data_rejestracji DATE,
);

CREATE TABLE bibliotekarz (
	Id_osoby int(4) unique not null primary key,
	rok_dolaczenia Date,
	czy_w_disco bool,
);

CREATE TABLE karta_wypozyczenia (
	ksiazka_id int,
	osoba_id int,
	data_wypozyczenia DATE,
	data_oddania DATE default null,
)



