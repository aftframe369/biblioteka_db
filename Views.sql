Create view karta_ksiazki as
Select e.ID, t.Tytul, CONCAT(a.Imie, ' ', a.Nazwisko), k.Nazwa, m.Nazwa from egzemplarz e
join tytul t on e.ID_tytulu = t.ID
join autorzy_ksiazek ak on t.ID_autora = ak.ID_ksiazki
join autor a on ak.ID_autora=a.ID
join kategoria k on t.ID_ wjkategorii = k.ID
join lokalizacja_ksiazek l on l.ID_egzemplarza=e.ID
join miejsce m on m.ID=l.ID_lokacji;

Create view view_wypozyczenia as 
Select e.ID, t.Tytul, Concat(u.imie, ' ', u.nazwisko), k.Data_wypozyczenia
from karta_wypozyczenia k 
join egzemplarz e on k.ID_egzemplarza = e.ID
join osoba u on k.ID_osoby = u.ID
join tytul t on e.ID_tytulu = t.ID;

Create view view_tytulu as
Select k.Nazwa, t.Tytul, a.Imie, a.Nazwisko, a.Uwagi
from tytul t 
join autorzy_ksiazek ak on t.ID=ak.ID_ksiazki
join autor a on ak.ID_autora=a.ID;

