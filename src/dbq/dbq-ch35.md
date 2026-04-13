---
title: Gegevens filteren
date: 2022-04-04
---

# {{ course-title }}

## {{ title }}

{% video "9_5Ey_3oi30" %}

Stel dat je niet alle records uit een tabel wil opvragen maar je wilt gegevens filteren.  
In onderstaand voorbeeld worden alleen de kolommen <code>doc_naam</code> en <code>telefoon</code> weergegeven uit de tabel docent. Met <code>where</code> worden de gegevens gefilterd. De data uit de kolom <code>doc_naam</code> moet overeenkomen met de tekst 'Witlok'. Omdat het om tekst gaat, moet 'Witlok' tussen aanhalingstekens worden geplaatst.

```sql
 select doc_naam, telefoon from docent where doc_naam = 'Witlok';
+----------+------------+
| doc_naam | telefoon   |
+----------+------------+
| Witlok   | 071-123378 |
+----------+------------+
```
Filteren op plaatsnaam:
```sql
 select doc_naam, telefoon from docent where plaats = 'Oosterhout';
+----------+------------+
| doc_naam | telefoon   |
+----------+------------+
| Witlok   | 071-123378 |
| Peters   | 01620-3429 |
+----------+------------+
```
## LIKE
Zowel Peters al Witlok wonen in Oosterhout!

Er kan ook gefilterd worden op een deel van de data. Stel dat alle namen en telefoonnumers van docenten uit plaatsen die beginnen met de letter 'B' moeten worden weergegeven. Dan kan dat door weer gebruik te maken van <code>where</code> en de operator <code>like</code>.
```sql
select doc_naam, plaats, telefoon from docent where plaats like 'B%';
+------------+--------+------------+
| doc_naam   | plaats | telefoon   |
+------------+--------+------------+
| Hooymayers | Breda  | 076-442786 |
| Sengers    | Bavel  | NULL       |
| Mol        | Breda  | 076-227788 |
+------------+--------+------------+

```
Met bovenstaande query worden de docenten uit 'Bavel' en 'Breda' weergegeven. 
Het '%'-tekentje in de query staat voor een 'wildcard'. Je kunt voor een %-teken iedere reeks van karakters in de plaats zetten. Zo moet een plaats in ieder geval beginnen met de letter 'B', maar maakt het niet uit welke karakters daar nog achteraan komen.

## Filters combineren
Het is ook mogelijk om op meerdere criteria te filteren.
```sql
select doc_naam, plaats, telefoon from docent where plaats = 'Bavel' or plaats = 'Oosterhout';
+----------+------------+------------+
| doc_naam | plaats     | telefoon   |
+----------+------------+------------+
| Witlok   | Oosterhout | 071-123378 |
| Peters   | Oosterhout | 01620-3429 |
| Sengers  | Bavel      | NULL       |
+----------+------------+------------+
```
In <code>where plaats = 'Bavel' or plaats = 'Oosterhout'</code> uit bovenstaand voorbeeld worden alle docenten getoond die wonen in Bavel **of** Oosterhout. Beide plaatsen worden in het overzicht getoond. 

Je kunt de criteria ook aanscherpen zodat data aan meerdere voorwaarden moet voldoen.
Hieronder worden alle docenten getoond waarvan de naam eindigt op 'rs' **en** de plaats begint met een 'B'. Met <code>where doc_naam like '%rs' and plaats like 'B%'</code> gelden beide voorwaarden alleen voor Hooymayers en Sengers!
```sql
select doc_naam, plaats, telefoon from docent where doc_naam like '%rs' and plaats like 'B%';
+------------+--------+------------+
| doc_naam   | plaats | telefoon   |
+------------+--------+------------+
| Hooymayers | Breda  | 076-442786 |
| Sengers    | Bavel  | NULL       |
+------------+--------+------------+
```

## IS NULL
Er kan ook gefilterd worden op velden die leeg zijn. Sommige docenten hebben geen telefoon. Om te bepalen wie dat zijn kan de volgende query worden gebruikt:
```sql
select doc_naam, telefoon from docent where telefoon is null;
+----------+----------+
| doc_naam | telefoon |
+----------+----------+
| Sengers  | NULL     |
+----------+----------+
```
Met <code>is null</code> vind je alle lege velden.

De omgekeerde select kan ook handig zijn. In onderstaand voorbeeld worden alle docenten met een telefoon weergegeven:
```sql
select doc_naam, telefoon from docent where not telefoon is null;
+------------+------------+
| doc_naam   | telefoon   |
+------------+------------+
| Witlok     | 071-123378 |
| Hooymayers | 076-442786 |
| Grond      | 013-426786 |
| Peters     | 01620-3429 |
| Mol        | 076-227788 |
+------------+------------+

```
Met <code>not</code> voor de veldnaam-operator-waarde (<code>telefoon is null</code>) wordt de omgekeerde selectie getoond.

## Distinct
Als je een overzicht wilt opvragen van de verschillende woonplaatsen van de cursisten dan kun je de volgende query gebruiken:
``` sql
select plaats from cursist;
```
``` shell
+------------+
| plaats     |
+------------+
| Made       |
| Oosterhout |
| Goirle     |
| Breda      |
| Dronten    |
| Dronten    |
+------------+
```
Zoals je ziet krijg je ook dubbele waarden. Er zijn meerdere cursisten die uit Dronten komen. Je kunt alleen unieke waarden opvragen door de dubbele waarnden te filteren met <code>distinct</code>.
``` sql
select distinct plaats from cursist;
```
``` shell
+------------+
| plaats     |
+------------+
| Made       |
| Oosterhout |
| Goirle     |
| Breda      |
| Dronten    |
+------------+
```
Dronten komt nog maar 1 keer voor in de uitvoer.

## Oefeningen
* Geef de query voor een overzicht van de naam en roepnaam van alle cursisten die in Oosterhout wonen.
* Geef de query voor een overzicht van het cursistnummer en de roepnaam van alle cursisten die niet in Oosterhout wonen.
* Geef de query voor een overzicht van alle cursisten die vrouw zijn.
* Geef de query voor een overzicht van alle cursisten die niet man zijn. (dit is een andere query dan de vorige vraag, maar met hetzelfde resultaat)
* Geef de query voor een overzicht van alle cursisten die in Breda wonen en vrouw zijn.
* Geef de query voor een overzicht van alle cursisten die in Oosterhout of Made wonen.
* Geef de query voor een overzicht van alle plaatsen waar cursussen worden gegeven.
