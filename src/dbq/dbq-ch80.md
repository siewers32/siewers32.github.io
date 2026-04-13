---
title: CSV bestanden importeren
date: 2022-04-08
---

# {{ course-title }}

## {{ title }}

Soms heb je al een database structuur, maar krijg je later nieuwe nieuwe data die je aan een tabel toe wilt voegen.
Het kan gaan om data uit Excel-bestanden of data uit een IoT omgeving. In dit hoofdstuk kun je zien hoe je de bestaande data uit een tabel kunt verwijderen en hoe je nieuwe data toevoegd.

## Voorbeeld
Eerder is er gebruik gemaakt van een database `school`. De database bevat 4 tabellen...
````sql
MariaDB [(none)]> use school;
Database changed
MariaDB [school]> show tables;
+------------------+
| Tables_in_school |
+------------------+
| c_regel          |
| cursist          |
| cursus           |
| docent           |
+------------------+
4 rows in set (0.010 sec)
````
Stel er wordt nieuwe data aangeleverd (bijv. de gegevens van een andere school). Welke handelingen moet je doen om de database te legen en de nieuwe data te importeren.
* Bestaande tabellen leegmaken, hier moet je rekening mee houden:
    * Je kunt geen cursisten verwijderen die nog gekoppeld zijn aan een cursus
    * Je kunt geen cursussen verwijderen waar nog cursisten aan zijn gekoppeld.
    * De volgorde waarin je gegevens verwijderd is dus belangrijk!

````sql

MariaDB [school]> show fields from c_regel;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| curs_code | varchar(8)   | YES  |     | NULL    |       |
| cursistnr | varchar(4)   | YES  |     | NULL    |       |
| cijfer    | decimal(2,0) | YES  |     | NULL    |       |
| betaald   | decimal(6,2) | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.042 sec)
````

* In dit geval is de volgorde van verwijderen als volgt:
    * c_regel (in c_regel staat het cursistnr en de curs_code)
    * docent (docent is niet gekoppeld aan andere tabellen)
    * cursist (c_regel is leeg, dus cursist kan worden verwijderd)
    * cursus (c_regel is leeg, dus cursu kan worden verwijderd)

Voer de volgende queries uit:
````sql
truncate c_regel;
truncate docent;
truncate cursist;
truncate cursus;
````
NB: `truncate` verwijdert alle records uit een tabel. De identity ('id') wordt ook gereset en begint weer bij 1. `delete from c_regel` verwijdert ook alle records uit de tabel, maar als er weer nieuwe records worden toegevoegd zal het oorspronkelijke id weer worden opgehoogd. (hoogste id was bijv. 100, nieuwe records invoegen starten bij 101...).

## CSV-data importeren
* In een csv bestand is ieder record opgeslagen in 1 regel.
* In onderstaand voorbeeld bestaat de eerste regel uit de veldnamen
* Iedere volgende regel is data (in dit geval personeelsgegevens)

````csv
voorbeeld 1:

id,title,firstname,lastname,email,jobtitle
1,mevr.,Liam,Polat,l.polat@superduper-markets.com,verkoopassistent
2,dhr.,Ian,van der Horst,i.vanderhorst@superduper-markets.com,magazijnmedewerker
3,mevr.,Riley,Yüksel,r.yüksel@superduper-markets.com,medewerker administratie
````
* Hieronder een voorbeeld van dezelfde data, ook in CSV-format, maar nu zonder eerste regel met veldnamen, alle velden zijn ingesloten door `""` en de data is gescheiden door `;` in plaats van `,`.
* CSV-data kan dus in verschillende vormen worden gepresenteerd.

````csv
voorbeeld 2:

"1";"mevr.";"Liam";"Polat";"l.polat@superduper-markets.com";"verkoopassistent"
"2";"dhr.";"Ian";"van der Horst";"i.vanderhorst@superduper-markets.com";"magazijnmedewerker"
"3;"mevr.";"Riley";"Yüksel";"r.yüksel@superduper-markets.com";"medewerker administratie"
````

Om CSV-data op de juiste manier te importeren moet je rekening houden met de verschillende verschijningsvormen.

````csv
Data import voorbeeld 1:

LOAD DATA INFILE "C:/Users/jsiewers/Downloads/school/cursus.csv" \ 
INTO TABLE cursus \
COLUMNS TERMINATED BY ',' \
LINES TERMINATED BY '\n' \
IGNORE 1 LINES;
````
````csv
Data import voorbeeld 2:

LOAD DATA INFILE "C:/Users/jsiewers/Downloads/school/cursus.csv" \
INTO TABLE cursus \
COLUMNS TERMINATED BY ';' \
ENCLOSED BY '"' \
LINES TERMINATED BY '\n' \
IGNORE 0 LINES;
````