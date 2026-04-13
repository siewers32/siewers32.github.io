---
title: Starten met CSS
date: 2022-04-01
---

# {{ course-title }}

{% video "AXzUJ-wO77s" %}

```javascript
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
      <title>Wilkens installatiebedrijf</title>
  </head>
  <body>
    <header>
      <nav>
        <a href="#nieuws">Nieuws</a>
        <a href="#over-ons">Over ons</a>
        <a href="#producten">Producten</a>
        <a href="#contact">Contact</a>
      </nav>
    </header>
        ....
  </body>
</html>
```

Bovenstaande code resulteert in de volgende output in de browser:

<div class="html">
<a href="#" style="text-decoration: underline;cursor: pointer;" onclick="return false;">Nieuws</a>
<a href="#over-ons" style="text-decoration: underline;cursor: pointer;" onclick="return false;">Over ons</a>
<a href="#producten" style="text-decoration: underline;cursor: pointer;" onclick="return false;">Producten</a>
<a href="#contact" style="text-decoration: underline;cursor: pointer;" onclick="return false;">Contact</a>
</div>  

Als we nu de achtergrond van de navigatiebalk een andere kleur willen geven, dan moeten we de volgende css-code toevoegen aan de head van het html-document:
```javascript
<!DOCTYPE html>
<html lang="en">
  <head>
    <style>
      nav {
        background-color:yellow;
      }
    </style>
   </head>
   <body>
    ......
```
<div class="html">
<nav style="background-color:yellow;">
<a href="#" style="text-decoration: underline; cursor: pointer;" onclick="return false;">Nieuws</a>
<a href="#over-ons" style="text-decoration: underline;cursor: pointer;" onclick="return false;">Over ons</a>
<a href="#producten" style="text-decoration: underline;cursor: pointer;" onclick="return false;">Producten</a>
<a href="#contact" style="text-decoration: underline;cursor: pointer;" onclick="return false;">Contact</a>
</nav>
</div>

De css-code komt tussen 'style'-tags te staan.  
'nav' is de selector. De selector geeft aan op welk(e) element(en) de stijl betrekking heeft.
'background-color' is de eigenschap die we in willen stellen voor de 'nav'-tag, 
'yellow' is in dit geval de waarde die we toe willen kennen aan de eigenschap 'background-color'.

Als we de kleur van de links willen aanpassen en de lijn onder de letters willen verwijderen,
dan moeten we de volgende selector en eigenschappen gebruiken:
```javascript
      nav {
        background-color:yellow;
      }
      
      nav a {
        color: red;
        text-decoration: none;
      }
```
<div class="html">
<nav style="background-color: yellow">
<a href="#" style="text-decoration: none;color:red;cursor: pointer;" onclick="return false;">Nieuws</a>
<a href="#over-ons" style="text-decoration: none;color:red;cursor: pointer;" onclick="return false;">Over ons</a>
<a href="#producten" style="text-decoration: none;color:red;cursor: pointer;" onclick="return false;">Producten</a>
<a href="#contact" style="text-decoration: none;color:red;cursor: pointer;" onclick="return false;">Contact</a>
</nav>
</div>

'nav a' verwijst naar alle 'a'-tags die in een 'nav' voorkomen.


Je kunt op allerlei manieren verwijzen naar elementen in een html-document. 
Je kunt bijvoorbeeld de stijl aanpassen als je de muis over een link beweegt. 
Op onderstaande sites kun je een opsomming van alle selectors en hun mogelijkheden vinden:


* [w3 schools css-selectors](https://www.w3schools.com/cssref/css_selectors.asp)
* [MDN  css-selectors](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Selectors)


Je kunt op 3 manieren een stylesheet toevoegen:

## Externe css 
Je kunt je css-stijlen  opnemen in een apart document. Bijv. stijl.css.
Je moet dan een verwijzing maken naar stijl.css vanuit het html-document (index.html).
Stel je hebt de volgende map-structuur:
```javascript
website
 |-- css
     | -- stijl.css
 |-- index.html
```
In dit geval moet je in het index.html bestand een (relatieve) verwijzing opnemen naar css/stijl.css.
Externe css is vooral handig als je meerdere pagina's hebt waar dezelfde stijl wordt toegepast.
```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <link rel="stylesheet" href="css/stijl.css">
  </head>
  ....
```

## Interne css
Bij de introductie heb je gezien dat je css kunt opnemen in de header van je document.
Je maakt dan gebruik van de style-tag.
```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <style>
      nav {
        background-color:yellow;
      }
    </style>
   </head>
```


Interne css is vooral handig als je stijlen hebt die maar op 1 pagina voorkomen.

## Inline css
Bij inline css plaats je de css code als attribuut van de tag....
```html
<h1 style="background-color:yellow; padding:20px;">Dit is een kopje</h1>
```
Vooral handig als je 1 element hebt dat een andere stijl moet krijgen.

Je kunt de verschillende methoden door elkaar gebruiken, maar als je een element op meerdere plaatsen een stijl geeft dan
gaat inline voor intern en intern gaat weer voor extern. 

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <style>
        p {
            color: green;
        }
    </style>
  </head>
<body>
    <p style="color: red;">
        Deze tekst wordt rood, want inline overschrijft de waarde in het interne stylesheet.
    </p> 
</body>
```


Stel, er moet een lijn komen om de tabel en de afzonderlijke tabel-cellen moeten ook een lijn krijgen.
Als je onderstaande css toepast op een tabel dan krijg je een dubbele lijn...

```css
table, td, th {
    border-width: 1px;
    border-color: black;
    border-style: solid;
```

<div class="html">
    <style>
        div.html table, div.html tr, div.html th, div.html td {
            border: 1px solid black;
        }
    </style>
    <table style="border-collapse: separate; border: 1px solid black;">
        <tr>
            <th style="border: 1px solid black">Woningtype</th>
            <th style="border: 1px solid black">Gemiddeld verbruik per jaar in m3</th>
            <th style="border: 1px solid black">Kosten per maand in €</th>
        </tr>
        <tr>
            <td style="border: 1px solid black">Hoekwoning</td>
            <td style="border: 1px solid black">1.380 m3</td>
            <td style="border: 1px solid black">113,-</td>
        </tr>
        <tr>
            <td style="border: 1px solid black">2 onder 1 kap</td>
            <td style="border: 1px solid black">1.560 m3</td>
            <td style="border: 1px solid black">124,-</td>
        </tr>
        <tr>
            <td style="border: 1px solid black">Vrijstaand</td>
            <td style="border: 1px solid black">2.010 m3</td>
            <td style="border: 1px solid black">154,-</td>
        </tr>
        <tr>
            <td style="border: 1px solid black">Gemiddeld alle woningen</td>
            <td style="border: 1px solid black">1.254 m3</td>
            <td style="border: 1px solid black">104,-</td>
        </tr>
    </table>
</div>

Standaard voegt je browser een beetje ruimte tussen de lijn om de tabel (table) en de lijn om een tabel-cel (td).
Je kunt dit voorkomen met de eigenschap 'border-collapse' en de waarde 'collapse'.

```css
table, td, th {
    border-collapse: collapse;
    border-width: 1px;
    border-color: black;
    border-style: solid;
```

<div class="html">
    <style>
        div.html table.collapsed  {
            border-collapse: collapse;
            border: 1px solid black;
        }
    </style>
    <table class="collapsed">
        <tr>
            <th>Woningtype</th>
            <th>Gemiddeld verbruik per jaar in m3</th>
            <th>Kosten per maand in €</th>
        </tr>
        <tr>
            <td>Hoekwoning</td>
            <td>1.380 m3</td>
            <td>113,-</td>
        </tr>
        <tr>
            <td>2 onder 1 kap</td>
            <td>1.560 m3</td>
            <td>124,-</td>
        </tr>
        <tr>
            <td>Vrijstaand</td>
            <td>2.010 m3</td>
            <td>154,-</td>
        </tr>
        <tr>
            <td>Gemiddeld alle woningen</td>
            <td>1.254 m3</td>
            <td>104,-</td>
        </tr>
    </table>
</div>  







