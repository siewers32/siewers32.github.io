---
title: Tabellen combineren
date: 2022-04-07
---

# {{ course-title }}

## {{ title }}


De mooiste resultaten krijg je als je gegevens uit tabellen kunt combineren. In de school-database is het bijvoorbeeld handig als je een lijst kunt opvragen van de namen van cursisten die aan een cursus meedoen. Om dit overzicht te maken zijn de gegevens uit meerdere tabellen nodig.
Bekijk hiervoor de inhoud uit de tabel cursisten en de tabel c_regel.  
In c_regel wordt bijgehouden wie voor welke cursus is ingeschreven.
```sql
select * from c_regel;
+-----------+-----------+--------+---------+
| curs_code | cursistnr | cijfer | betaald |
+-----------+-----------+--------+---------+
| DB3       | 64        |      8 | 3300.00 |
| DB3       | 2         |      6 |    NULL |
| DB3       | 68        |      9 | 3300.00 |
| OA2       | 14        |      5 | 2400.00 |
| OA2       | 88        |      7 | 2000.00 |
| OA2       | 2         |      9 |    NULL |
| DB4       | 14        |      6 | 3600.00 |
+-----------+-----------+--------+---------+
```
Hieronder de gegevens uit de cursisten-tabel
```sql
select * from cursist;
+-----------+---------+----------+----------------+----------+------------+----------+------------+
| cursistnr | naam    | roepnaam | straat         | postcode | plaats     | geslacht | geb_datum  |
+-----------+---------+----------+----------------+----------+------------+----------+------------+
| 64        | Broeken | Bram     | Drimmelseweg 8 | 4395 XX  | Made       | M        | 1988-03-24 |
| 88        | Vos     | Henk     | Besbeemd 64    | 4142 CE  | Oosterhout | M        | 1989-09-22 |
| 2         | Krimpen | Tanja    | Tilburgseweg 2 | 4222 BB  | Goirle     | V        | 1990-02-08 |
| 14        | Norbart | Niels    | Gershof 8      | 4841 PL  | Breda      | M        | 1987-12-06 |
| 89        | Stofman | Kees     | Lindenlaan 23  | 4998 XF  | Dronten    | M        | 1987-03-22 |
| 91        | Stofman | Kees     | Lindenlaan 23  | 4998 XF  | Dronten    | M        | NULL       |
+-----------+---------+----------+----------------+----------+------------+----------+------------+
```
## Join
In tabel c_regel vind je de cursus-code, terwijl in de tabel cursisten de namen van de cursisten te vinden zijn. Je kunt beide tabellen combineren omdat in de tabel c_regel cursistnummers worden gebrukt om aan te geven wie aan welke cursus meedoet. In de eerste rij zie je dat cursist 64 meedoet met de cursus 'DB3'. De cursistnummers in de tabel c_regel komen overeen met cursistnummers in de tabel cursist. Met <code>join</code> worden de tabellen gecombineerd. Daarna wordt er met <code>on</code> aangegeven wat de relatie is tussen de tabellen. Het cursistnummer in tabel cursisten moet corresponderen met het cursistnummer in de tabel c_regel...
```sql
select roepnaam, naam, curs_code from cursist c join c_regel cr on c.cursistnr = cr.cursistnr;
+----------+---------+-----------+
| roepnaam | naam    | curs_code |
+----------+---------+-----------+
| Bram     | Broeken | DB3       |
| Tanja    | Krimpen | DB3       |
| Niels    | Norbart | OA2       |
| Henk     | Vos     | OA2       |
| Tanja    | Krimpen | OA2       |
| Niels    | Norbart | DB4       |
+----------+---------+-----------+
```
In de query wordt de naam van de tabel cursist afgekort naar de letter c. Dat scheelt veel tekst en maakt de query overzichtelijker. De naam van de tabel c_regel wordt afgekort naar cr. Zo kun je beide tabellen combineren op basis van het cursistnummer. 
In het volgende voorbeeld willen we de volledige naam van de cursus weergeven. Deze naam komt wel voor in de cursus-tabel, maar niet in c_regel. Beide tabellen kunnen worden gecombineerd omdat de cursus-code wel in beide tabellen voorkomt. Op basis van de cursuscode kan in de cursus-tabel de omschrijving van de cursus worden opgehaald.

## Joins combineren
```sql
select roepnaam, naam, omschr from cursist c 
join c_regel cr on c.cursistnr = cr.cursistnr 
join cursus cu on cr.curs_code = cu.curs_code;
+----------+---------+-----------------+
| roepnaam | naam    | omschr          |
+----------+---------+-----------------+
| Bram     | Broeken | Dbase III Plus  |
| Tanja    | Krimpen | Dbase III Plus  |
| Niels    | Norbart | Dbase IV        |
| Niels    | Norbart | Open Access 2.1 |
| Henk     | Vos     | Open Access 2.1 |
| Tanja    | Krimpen | Open Access 2.1 |
+----------+---------+-----------------+

```
Na het samenvoegen van tabellen kan er weer gefilterd en gegroepeerd worden. Met filtering worden alleen de Dbase-cursussen getoond:
```sql
select roepnaam, naam, omschr from cursist c 
join c_regel cr on c.cursistnr = cr.cursistnr 
join cursus cu on cr.curs_code = cu.curs_code 
where omschr like 'Dbase%';
+----------+---------+----------------+
| roepnaam | naam    | omschr         |
+----------+---------+----------------+
| Bram     | Broeken | Dbase III Plus |
| Tanja    | Krimpen | Dbase III Plus |
| Niels    | Norbart | Dbase IV       |
+----------+---------+----------------+

```

## Berekeningen en filteren
Een overzicht genereren van de cursussen met hoogst behaalde cijfers;
```sql
select omschr, max(cijfer) as `highest score` from cursist c 
join c_regel cr on c.cursistnr = cr.cursistnr 
join cursus cu on cr.curs_code = cu.curs_code 
group by cu.curs_code order by cu.curs_code desc;
+-----------------+---------------+
| omschr          | highest score |
+-----------------+---------------+
| Open Access 2.1 |             9 |
| Dbase IV        |             6 |
| Dbase III Plus  |             8 |
+-----------------+---------------+

```

Een overzicht van de namen en resultaten van de studenten aflopend gesorteerd op gemiddeld cijfer:
```sql
select roepnaam, naam, avg(cijfer) as `gemiddelde score` 
from cursist c 
join c_regel cr on c.cursistnr = cr.cursistnr 
join cursus cu on cr.curs_code = cu.curs_code 
group by c.cursistnr order by avg(cijfer) desc;
+----------+---------+------------------+
| roepnaam | naam    | gemiddelde score |
+----------+---------+------------------+
| Bram     | Broeken |           8.0000 |
| Tanja    | Krimpen |           7.5000 |
| Henk     | Vos     |           7.0000 |
| Niels    | Norbart |           5.5000 |
+----------+---------+------------------+
```
## Oefeningen
Maak gebruik van de database `bibliotheek` die je bij het onderdeel 'Database maken' hebt gemaakt.  
Zorg ervoor dat de gegevens correct zijn toegevoegd.  
  
Maak de queries bij onderstaande vragen:
* Schrijf een query om alle klanten met hun voornaam, achternaam en emailadres te tonen.
* Schrijf een query om de titel, het jaar en de druk van alle boeken te tonen die na het jaar 2000 zijn gepubliceerd.
* Schrijf een query om de voornaam en achternaam van klanten te tonen die een boek hebben geleend in 2023.
* Schrijf een query om de titel van de boeken te tonen die momenteel zijn uitgeleend (retourdatum is nog niet bereikt).
* Schrijf een query om het aantal keren dat elk boek is uitgeleend te tonen, samen met de titel van het boek.
* Schrijf een query om het totale aantal boeken dat in 2022 is uitgeleend te tonen.
* Schrijf een query om de voornaam en achternaam van klanten te tonen die meer dan 3 boeken hebben uitgeleend.
* Schrijf een query om de gemiddelde uitleenperiode (verschil tussen uitleendatum en retourdatum) van alle boeken te berekenen.
* Schrijf een query om alle boeken die na de 3e druk zijn gepubliceerd te tonen.
* Schrijf een query om de klantgegevens van klanten die nog geen enkel boek hebben uitgeleend te tonen.
* Schrijf een query om de 5 meest uitgeleende boeken te tonen, inclusief hun titel en het aantal keer dat ze zijn uitgeleend.
* Schrijf een query om de naam en emailadres van klanten te tonen die een boek met de titel 'De Hobbit' hebben uitgeleend.
* Schrijf een query om de titel van de boeken en de totale uitleenperiode per boek te tonen (het totaal aantal dagen dat elk boek is uitgeleend).
* Schrijf een query om de klant(en) te tonen die het vaakst een boek hebben geleend, samen met het aantal keer dat ze iets hebben geleend.
* Schrijf een query om de titel van boeken te tonen die zowel in 2022 als in 2023 zijn uitgeleend.