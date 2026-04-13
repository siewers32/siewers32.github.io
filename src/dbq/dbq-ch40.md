---
title: CRUD
date: 2022-04-05
---

# {{ course-title }}

## {{ title }}

{% video "poSbU9rdpoE" %}


CRUD staat voor CReate, Update en Delete. Het toevoegen, aanpassen of verwijderen van records uit een tabel. Stel dat er nieuwe cursist zich heeft aangemeld. De cursist moet worden toegevoegd aan de tabel <code>cursist</code>.

## Records toevoegen
Om records toe te kunnen voegen aan de tabel moet helder zijn wat de structuur van de tabel is.
Hieronder worden de velden weergegeven met hun eigenschappen. Zo kun je zien dat de postcode van het type <code>varchar</code> moet zijn en maximaal 7 karakters mag hebben. <code>varchar</code> staat voor variabel aantal karakters. In de kolom 'Null' staat bij ieder veld 'YES'. Dit betekent dat dit veld leeg gelaten mag worden. Het is dus niet nodig om alle gegevens te gebruiken voor het aanmaken van een nieuwe cursist!

```sql
show fields from cursist;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| cursistnr | varchar(4)  | YES  |     | NULL    |       |
| naam      | varchar(25) | YES  |     | NULL    |       |
| roepnaam  | varchar(25) | YES  |     | NULL    |       |
| straat    | varchar(25) | YES  |     | NULL    |       |
| postcode  | varchar(7)  | YES  |     | NULL    |       |
| plaats    | varchar(25) | YES  |     | NULL    |       |
| geslacht  | varchar(1)  | YES  |     | NULL    |       |
| geb_datum | date        | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
```
Stel 'Kees Stofman' moet worden toegevoegd. Van 'Kees' is zijn naam, zijn postcode en plaats bekend...
```sql
insert into cursist (cursistnr, roepnaam, postcode, plaats) 
values (92, 'Kees', '4889 HJ', 'Rotterdam');

Query OK, 1 row affected (0,00 sec)
```
Met <code>insert into cursist</code> wordt aangegeven dat er een record toegevoegd gaat worden aan de tabel 'cursist'. Tussen aanhalingstekens volgen dan de veldnamen waar waarden voor beschikbaar zijn. De waarden die moeten worden toegevoegd staan tussen haakjes achter values. Ze corresponderen met de positie van de velden.

## Records updaten
Stel dat inmiddels de geboortedatum van Kees bekend is. Het record van Kees wordt op de volgende manier aangepast.
```sql
update cursist set geb_datum = '1999-03-22' where cursistnr = 92;

Query OK, 1 row affected (0,00 sec)
Rows matched: 1  Changed: 1  Warnings: 0
```
Met <code>update cursist</code> wordt aangegeven dat het om de tabel cursist gaat. Met <code>set geb_datum = '1999-03-22'</code> wordt aangegeven welk veld aangepast moet worden. Gelukkig heeft Kees ook een uniek cursistnummer gekregen zo is precies bekend welke 'Kees' aangepast moet worden. Je kunt meerdere records tegelijk aanpassen, dus zorg ervoor dat de where-clause klopt! Zonder where-clause wordt van alle records in de tabel de geboortedatum aangepast.
PS: De where-clause is het gedeelte van de query dat na <code>where</code> komt.

## Records verwijderen
Om een record te kunnen verwijderen is weer een unieke waarde nodig zoals 'cursistnr'. Met cursistnr wordt aangegeven welk record precies verwijdert moet worden.
```sql
delete from cursist where cursistnr = 92;

Query OK, 1 row affected (0,00 sec)```
```

## Oefeningen
* Maak een nieuwe database aan met de naam 'reisbureau' en voer de queries uit van [dit sql-bestand](/_assets/projecten/reisbureau_001.sql).
* Geef de query om alle tabellen in de database 'reisbureau' weer te gegeven
* Voeg 2 nieuwe klanten toe aan de tabel 'customers' (je mag de waarden zelf bedenken)
* Geef de query om de eerste 10 boekingen te verwijderen (reservations)
* De klant met id 13 is verhuist naar 'De van der veldensteeg 81' in 'Apeldoorn'. Pas het record aan en geef de query om het record weer te geven. Controleer of de gegevens correct zijn.
