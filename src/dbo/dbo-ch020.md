---
title: Onderdelen van een database
date: 2022-04-04
---

# {{ course-title }}

## {{ title }}
### Database server
* Een database server zorgt voor de opslag van gegevens.
  * Een database server beheert meerdere databases.
* De server regelt toegang voor verschillende typen gebruikers.
* De server regelt toegang tot gegevens.

## Database clients
* MySQL (commandline)
* MySQL Workbench
* PHPMyAdmin
* HeidiSQL
* DBeaver

## Database
* Een database is een verzameling van tabellen (vergelijkbaar met een spreadsheet)
* Een database is een systeem waarin data op een gestructureerde manier kan worden opgeslagen
  * Je kan dan makkelijk gegevens terugvinden

## Tabellen
* Een tabel lijkt een soort spreadsheet.
  * Een tabel heeft een naam
  * Een tabel heeft rijen en kolommen met data
  * Iedere kolom heeft een naam

## Velden
* Een veld is de naam van een kolom in een tabel

## Records
* Een record is een rij in een tabel.

## Voorbeeld
#### Bibliotheek
Tabel: **Boek**
<div class="html">
<table style="border: 1px solid #000; border-collapse: collapse;">
<tr>
  <th>book_id</th>
  <th>title</th>
  <th>author</th>
  <th>genre</th>
  <th>isbn</th>
  <th>stock_status</th>
</tr>
<tr>
  <td style="text-align: center;">1</td>
  <td >Guide to SQL</td>
  <td >Joe Bloggs</td>
  <td >Computing</td>
  <td >123456789</td>
  <td style="text-align: center;">25</td>
</tr>
<tr>
  <td style="text-align: center;">2</td>
  <td >Database design</td>
  <td >Deborah Smith</td>
  <td >Computing</td>
  <td >987654321</td>
  <td style="text-align: center;">4</td>
</tr>
<tr>
  <td style="text-align: center;">3</td>
  <td >Database basics</td>
  <td >Joel Bily</td>
  <td >Computing</td>
  <td >456738274</td>
  <td style="text-align: center;">0</td>
</tr>
</table>
</div>

Tabel: **Uitleen**

<div class="html">
<table style="border: 1px solid #000; border-collapse: collapse;">
<tr>
  <th>uitleen_id</th>
  <th>date</th>
  <th>customer</th>
  <th>return</th>
  <th>book</th>
</tr>
<tr>
  <td style="text-align: center;">23</td>
  <td >22-12-2020</td>
  <td >12443</td>
  <td >01-02-2021</td>
  <td >2</td>
</tr>
<tr>
  <td style="text-align: center;">24</td>
  <td >11-11-2020</td>
  <td >21233</td>
  <td >01-12-2020</td>
  <td >3</td>
</tr>
<tr>
  <td style="text-align: center;">28</td>
  <td >11-10-2020</td>
  <td >23399</td>
  <td ></td>
  <td >1</td>
</tr>
</table>
</div>