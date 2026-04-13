---
title: Database maken
date: 2022-04-05
---

# {{ course-title }}

## {{ title }}


Tot nu toe heb je steeds gebruik gemaakt van een bestaande database. De queries om de database aan te maken vond je in een sql-bestand. In dit hoofdstuk ga je zelf een database maken.

Stel je moet een database maken voor een bibliotheek. De database bestaat uit 3 tabellen:
* De tabel klanten bestaat uit de volgende velden: `voornaam`, `achternaam`, `emailadres`
* De tabel boeken bestaat uit de velden: `titel`, `jaar` en `hoeveelste druk`
* De tabel uitleen bestaat uit `uitleendatum`, `retourdatum`, `klant_id`, `boek_id`
* Alle tabellen hebben een veld `id` dat tevens de primaire sleutel is.
* De tabel uitleen heeft 2 vreemde sleutels: 
    * `klant_id` die refereert naar de primaire sleutel `id` in de tabel klanten
    *  en `boek_id` die refereert naar de primaire sleutel `id` in de tabel boeken.

Hieronder zie je het script om de database aan te maken:
```sql
CREATE DATABASE bibliotheek;
USE bibliotheek;

CREATE TABLE klanten (
    id INT AUTO_INCREMENT PRIMARY KEY,
    voornaam VARCHAR(50),
    achternaam VARCHAR(50),
    emailadres VARCHAR(100)
);

CREATE TABLE boeken (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titel VARCHAR(100),
    jaar INT,
    druk INT
);

CREATE TABLE uitleengegevens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    uitleendatum DATE,
    retourdatum DATE,
    klant_id INT,
    boek_id INT,
    FOREIGN KEY (klant_id) REFERENCES klanten(id),
    FOREIGN KEY (boek_id) REFERENCES boeken(id)
);
```
#### Uitleg
* In de regel `id INT AUTO_INCREMENT PRIMARY KEY` geef je aan dat je een veld met de naam `id` wilt aanmaken van het type `INT`. `id` is een primaire sleutel. De waarde is een unieke integer die het record identificeert. Met `AUTO_INCREMENT` wordt aangegeven bij ieder nieuw record het `id` automatisch wordt gegenereerd naar het eerst volgende integer. 
* Met `VAR_CHAR(50)` wordt aangegeven dat de waarde van het type `string` of `tekst` is. Het mag maximaal 50 karakters bevatten.
* Met `INT` wordt een geheel getal bedoeld
* Met `DATE` gaat het om een datum-veld.
* Onderaan bij uitleen zie je dat de vreemde sleutels `FOREIGN KEY` verwijzen naar de velden id in de klanten- en boekentabel.

## Oefeningen
Voeg onderstaande records toe aan de tabel boeken van de database:
```shell
+----+----------------------------+------+------+
| id | titel                      | jaar | druk |
+----+----------------------------+------+------+
|  1 | De Avonden                 | 1947 |    1 |
|  2 | Het Diner                  | 2009 |    1 |
|  3 | De Ontdekking van de Hemel | 1992 |    1 |
|  4 | De Aanslag                 | 1982 |    1 |
+----+----------------------------+------+------+
```

Voeg onderstaande records toe aan de tabel klanten:
```shell
+----+----------+------------+--------------------------+
| id | voornaam | achternaam | emailadres               |
+----+----------+------------+--------------------------+
|  1 | Jan      | Jansen     | jan.jansen@email.com     |
|  2 | Piet     | Pietersen  | piet.pietersen@email.com |
|  3 | Klaas    | Klaassen   | klaas.klaassen@email.com |
|  4 | Emma     | de Vries   | emma.devries@email.com   |
+----+----------+------------+--------------------------+
```

Voeg onderstaande records toe aan de tabel uitleengegevens:
```shell
+----+--------------+-------------+----------+---------+
| id | uitleendatum | retourdatum | klant_id | boek_id |
+----+--------------+-------------+----------+---------+
|  5 | 2023-01-01   | 2023-01-15  |        1 |       1 |
|  6 | 2023-01-02   | 2023-01-16  |        2 |       2 |
|  7 | 2023-01-03   | 2023-01-17  |        3 |       3 |
|  8 | 2023-12-29   | 2024-01-12  |        4 |       4 |
+----+--------------+-------------+----------+---------+
```

Maak nu het sql-script voor een database met 3 tabellen:
* Voor een autoverhuurbedrijf moet je een database maken
* De tabel auto's bevat gegevens over het merk, kenteken, kilometerstand en aankoopdatum
* De tabel huurders bevat gegevens zoals voornaam, achternaam, rijbewijsnummer, adres, postcode, plaats en geboortedatum.
* De tabel verhuur bevat gegevens over de auto, de datum van verhuur, de verwachte datum waarop de auto wordt ingeleverd en de huurder.
* Gebruik logische namen voor de naam van velden en denk om primaire en vreemde sleutels!
