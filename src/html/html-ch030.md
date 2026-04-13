---
title: HTML structuur
date: 2022-04-03
---

# {{ course-title }}

## {{ title }}
Als je het html-bestand in je browser kon openen, dan heb je gezien dat je browser verschillende lettertypen en lettergroottes weergeeft.
HTML-code beschrijft op een logische manier wat de inhoud voor moet stellen. Een h1 is een heading, dus het gaat om de titel van een tekst.
Een p is een paragraaf en beschrijft een paragraaf met tekst. Er zijn nog veel meer tags.
Je kunt alle tags met uitleg vinden op [MDN webdocs van Mozilla](https://developer.mozilla.org/en-US/docs/Web/HTML/Element) of op [W3 Schools](https://www.w3schools.com/html/)
```html
<!DOCTYPE html>
 ```
Dit vertelt de browser welke versie of type HTML code er is gebruikt. 
De browser kan zo bepalen hoe de code omgezet moet worden naar een pagina.
```html
<html>
 ```
Met de HTML-tag wordt aangegeven dat de uit te voeren HTML-code hier begint.
```html
</html>
 ```
Onderaan zie je dat de code wordt afgesloten met een / en de naam van de tag.
Alle HTML code staat tussen de &#60;html&#62; en de &#60;/html&#62; tags.
```html
<head>
    <title>Titel van de pagina</title>
</head>
 ```
In de head wordt nog meer informatie gegeven over de pagina. 
Bijvoorbeeld de titel zoals die in de titelbalk of tab van het venster verschijnt.
```html
<body>
  <h1>>Dit is een heading</h1>
  <p>Dit is een paragraaf</p>
</body>
 ```
De body-tag bepaalt wat er in je browser-venster wordt getoond.
Alle elementen die binnen de body-tag staan worden gepresenteerd in de browser.
```html
<h1>Dit is een heading</h1>
<p>Dit is een paragraaf</p>
 ```
Deze code zorgt ervoor dat er twee regels tekst worden weergegeven. De heading is de grote tekst, de paragraaf is kleinere tekst.

## Opbouw van een HTML pagina
Zoals je ziet bestaat een HTML-pagina uit tags. Bijna alle tags hebben een openingstag (bijv. <title>) en een sluitingstag (</title>).
Er zijn wel eens uitzonderingen, maar 95% van HTML werkt op die manier.
Je kunt ook zien dat je binnen de html-tags ook weer andere tags kunt gebruiken. Bijvoorbeeld de head-tags. Binnen de head-tags kun je ook weer tags gebruiken.
Dit wordt nesting genoemd. 
Dit kan bijvoorbeeld:
```html
<p>
    <b>Een beetje tekst</b>
</p>
 ```
Maar dit kan niet....

```html
<b>
    <p>Een beetje tekst</b>
</p>
 ```
In bovenstaand voorbeeld zijn de tags niet goed genest!

{% video "6E7GBZAtcos" %}

