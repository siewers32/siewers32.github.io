---
title: Aggregatie functies
date: 2022-04-06
---

# {{ course-title }}

## {{ title }}

{% video "ZH7nt0L6HLo" %}


### Sorteren van data
Data kan gesorteerd worden weergegeven. Om de cursussen in de tabel te sorteren voeg je aan het einde van de query 'order by' en het veld waarop gesorteerd moet worden toe. Bijvoorbeeld:
```sql
select omschr, curs_prijs from cursus order by curs_prijs; 
+---------------------+------------+
| omschr              | curs_prijs |
+---------------------+------------+
| Framework           |     850.00 |
| Wordperfect         |    1450.00 |
| Programmeren in C++ |    1450.00 |
| Open Access 2.1     |    2400.00 |
| Open Access 3.0     |    2600.00 |
| Normaliseren        |    3000.00 |
| Dbase III Plus      |    3300.00 |
| Dbase IV            |    3600.00 |
+---------------------+------------+
```
De gegevens worden gesorteerd op prijs weergegeven.
Standaard wordt er oplopend gesorteerd (ascending). Om aflopend te sorteren moet de afkorting 'desc' na de veldnaam komen. Bijvoorbeeld:
```sql
select omschr, curs_prijs from cursus order by curs_prijs desc; 
+---------------------+------------+
| omschr              | curs_prijs |
+---------------------+------------+
| Dbase IV            |    3600.00 |
| Dbase III Plus      |    3300.00 |
| Normaliseren        |    3000.00 |
| Open Access 3.0     |    2600.00 |
| Open Access 2.1     |    2400.00 |
| Wordperfect         |    1450.00 |
| Programmeren in C++ |    1450.00 |
| Framework           |     850.00 |
+---------------------+------------+
```
In bovenstaand voorbeeld hebben 'Wordperfect' en 'Programmeren in C++' dezelfde prijs. In de query kunnen we nog specificeren dat nadat er op prijs is gesorteerd er ook nog gesorteerd moet worden op omschrijving, zodat eerst 'Programmeren in C++' wordt weergegeven en dan pas 'Wordperfect'. Dat gaat zo:
```sql
select omschr, curs_prijs from cursus order by curs_prijs desc, omschr asc;
+---------------------+------------+
| omschr              | curs_prijs |
+---------------------+------------+
| Dbase IV            |    3600.00 |
| Dbase III Plus      |    3300.00 |
| Normaliseren        |    3000.00 |
| Open Access 3.0     |    2600.00 |
| Open Access 2.1     |    2400.00 |
| Programmeren in C++ |    1450.00 |
| Wordperfect         |    1450.00 |
| Framework           |     850.00 |
+---------------------+------------+
```
## Berekeningen
MySQL kan ook gebruikt worden om berekeningen uit te voeren op data. Het aantal records kan geteld worden of de gemiddelde prijs kan worden berekend. Hieronder 2 voorbeelden:
Tel het aantal records in de tabel cursus
```sql
select count(*) from cursus;
+----------+
| count(*) |
+----------+
|        8 |
+----------+
```
Om de weergave wat interessanter te maken kun je de kop in de eerste regel aanpassen. In dit geval zit er een spatie tussen aantal en records. Hierdoor moet `aantal records` tussen 'backticks' worden geplaatst. Dit zijn niet de normale aanhalingstekens, maar een speciaal naar links hellend aanhalingsteken dat je meestal aan de linkerkant van je toetsenbord kunt vinden.
```sql
select count(*) as `aantal records` from cursus;
+----------------+
| aantal records |
+----------------+
|              8 |
+----------------+
```
In dit voorbeeld wordt gekeken naar de cursus die het meeste kost.
```sql
select omschr, max(curs_prijs) as `kost het meest` from cursus;
+----------------+----------------+
| omschr         | kost het meest |
+----------------+----------------+
| Dbase III Plus |        3600.00 |
+----------------+----------------+
```
Vind nog meer voorbeelden op W3Schools.com:
* https://www.w3schools.com/sql/sql_min_max.asp
* https://www.w3schools.com/sql/sql_count_avg_sum.asp

## Groeperen van data
Om berekeningen te maken over groepen data kun je in mysql gebruik maken van 'group by'. Door data te groeperen kun je gemiddelden uitrekenen of data optellen en tellen hoe vaak gegevens voorkomen.
Stel er moet een overzicht komen van het aantal cursussen per plaats. In het voorbeeld hieronder worden de unieke plaatsnamen weergegeven en er wordt met de functie <code>count()</code> geteld hoe vaak iedere naam voorkomt in de tabel.
```sql
select curs_plts, count(curs_plts) as aantal from cursus group by curs_plts;
+-----------+--------+
| curs_plts | aantal |
+-----------+--------+
| Breda     |      5 |
| Etten     |      1 |
| Made      |      2 |
+-----------+--------+
```
Je kunt gegevens die zijn gegenereerd met group by ook nog filteren. Je gebruikt dan 'having' in plaats van 'where'. 'Where' gebruik je voor groepering en 'having' erna.
```sql
select curs_plts, count(curs_plts) as aantal 
from cursus 
group by curs_plts having aantal > 1;
+-----------+--------+
| curs_plts | aantal |
+-----------+--------+
| Breda     |      5 |
| Made      |      2 |
+-----------+--------+
```

In onderstaand voorbeeld wordt er eerst gefilterd op cursusprijs. Met die selectie wordt er gegroepeerd. Als er in een plaats meer dan 1 cursussen zijn die meer kosten dan 1400 euro, dan wordt de plaats weergegeven en het aantal cursussen dat voldoet aan de criteria. 
```sql
select curs_plts, count(curs_plts) as aantal 
from cursus where curs_prijs > 1400 
group by curs_plts having aantal > 1;
+-----------+--------+
| curs_plts | aantal |
+-----------+--------+
| Breda     |      4 |
| Made      |      2 |
+-----------+--------+
```


