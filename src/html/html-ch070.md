---
title: Tabellen
date: 2022-04-07
---

# {{ course-title }}

## {{ title }} 
In HTML maak kun je tabellen weergeven met de 'table'-tag. In het verleden werden tabellen gebruikt om een website vorm te geven, 
maar tegenwoordig wordt de 'table'-tag alleen nog gebruikt waar hij ook oorspronkelijk voor bedoeld is.
Namelijk het weergeven van tabulaire informatie.

De structuur van een tabel start met een 'table'-tag. Verder bestaat een tabel uit rijen en (data)cellen.
Hieronder een voorbeeld van een simpele tabel:

```html
<table>
    <tr>
        <th>Groen</th><th>Rood</th>
    </tr>
    <tr>
        <td>komkommer</td><td>tomaat</td>
    </tr>
</table>
```
Hieronder het resultaat in de browser:
<style>
    div.html table,
    div.html td,
    div.html tr,
    div.html th {
        border: 1px solid black;
        padding:5px;
        vertical-align: middle; 
    }
</style>

<div class="html">
<table>
    <tr>
        <th>Groen</th><th>Rood</th>
    </tr>
    <tr>
        <td>komkommer</td><td>tomaat</td>
    </tr>
</table>
</div>

Uitleg:  
* Met 'table' wordt de tabel gecreëerd.  
* Bij 'tr' wordt de eerste table-row gemaakt.  
* Daarna volgt 2x een 'th' table-header. (groen en rood).  
* Vervolgens begint de volgende rij 'tr'.  
* En dan 2x een data-cel 'td'. (komkommer, tomaat).  

Een tabel in HTML lijkt wel wat op een spreadsheet. Je kunt ook cellen samenvoegen...
Met het attribuut colspan kun je aangeven dat een data-cel over meerdere kolommen gaat.

```html
<table>
    <tr>
        <th colspan="2">Groente</th>
    </tr>
    <tr>
        <td>komkommer</td><td>tomaat</td>
    </tr>
</table>
```
<div class="html">
<table>
    <tr>
        <th colspan="2">Groente</th>
    </tr>
    <tr>
        <td>komkommer</td><td>tomaat</td>
    </tr>
</table>
</div>

Met het rowspan-attribuut kun je een cel over meerdere rijen laten gaan....
```html
<table>
    <tr>
        <th rowspan="2">Groente</th><td>komkommer</td>
    </tr>
    <tr>
        <td>tomaat</td>
    </tr>
</table>
```
<div class="html">
<table>
    <tr>
        <th rowspan="2">Groente</th><td>komkommer</td>
    </tr>
    <tr>
        <td>tomaat</td>
    </tr>
</table>
</div>

Hieronder zowel colspan als rowspan toegepast..
```html
<table>
    <th>
        <td colspan="2">Tabel</td>
    </th>
    <tr>
        <th rowspan="2">Groente</th><td>komkommer</td>
    </tr>
    <tr>
        <td>tomaat</td>
    </tr>
</table>
```
<div class="html">
<table>
    <tr>
        <th colspan="2">Tabel</th>
    </tr>
    <tr>
        <th rowspan="2">Groente</th><td>komkommer</td>
    </tr>
    <tr>
        <td>tomaat</td>
    </tr>
</table>
</div>

> #### Opdracht 7.1 Zelf tabellen maken.
> Maak minimaal 3 tabellen na van de tabellen die je hier kunt downloaden:  
> [Tabellen downloaden](/_assets/html/tabellen.zip)

In de video's wordt uitgelegd hoe je tabellen maakt en er wordt een complexe tabel geanalyseerd en nagebouwd:


{% video "a6VI9QG5RIc" %}

{% video "_AId8a5rK60" %}



