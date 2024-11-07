ALTER TABLE egzemplarz 
ADD FOREIGN KEY (ID_tytulu) 
REFERENCES tytul(ID);

ALTER TABLE egzemplarz 
ADD FOREIGN KEY (ID_kategorii) 
REFERENCES kategoria(ID);

ALTER TABLE tytul 
ADD FOREIGN KEY (kategoria) 
REFERENCES kategoria(ID);

ALTER TABLE tytul 
ADD FOREIGN KEY (wydawnictwo) 
REFERENCES wydawnictwo(ID);

ALTER TABLE autorzy_ksiazek 
ADD FOREIGN KEY (ID_autora) 
REFERENCES autor(ID);

ALTER TABLE autorzy_ksiazek 
ADD FOREIGN KEY (ID_ksiazki) REFERENCES tytul(ID);

ALTER TABLE relacje_podkategorii 
ADD FOREIGN KEY (ID_kat_nad) 
REFERENCES kategoria(ID);

ALTER TABLE relacje_podkategorii 
ADD FOREIGN KEY (ID_podkat_nad) 
REFERENCES podkategoria(ID);

ALTER TABLE ksiazki_w_pionach 
ADD FOREIGN KEY (ID_pionu) 
REFERENCES pion(ID);

ALTER TABLE ksiazki_w_pionach 
ADD FOREIGN KEY (ID_tytulu) 
REFERENCES tytul(ID);

ALTER TABLE lokalizacja_ksiazek
ADD FOREIGN KEY (ID_lokacji) 
REFERENCES miejsce(ID);

ALTER TABLE lokalizacja_ksiazek
ADD FOREIGN KEY (ID_egzemplarza) 
REFERENCES egzemplarz(ID);

ALTER TABLE uzytkownik
ADD FOREIGN KEY (ID_osoby) 
REFERENCES osoba(ID);

ALTER TABLE bibliotekarz
ADD FOREIGN KEY (ID_osoby) 
REFERENCES osoba(ID);

ALTER TABLE karta_wypozyczenia
ADD FOREIGN KEY (ID_osoby) 
REFERENCES osoba(ID);

ALTER TABLE karta_wypozyczenia
ADD FOREIGN KEY (ID_egzemplarza) 
REFERENCES egzemplarz(ID);


