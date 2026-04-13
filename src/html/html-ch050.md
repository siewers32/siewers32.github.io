---
title: Bestanden beheren
date: 2022-04-05
---

# {{ course-title }}

## {{ title }} 
Als je een website gaat maken, dan krijg je te maken met veel bestanden. 
Denk aan afbeeldingen, html-pagina's en andere media-bestanden.
Het is handig om van te voren na te denken over een mappen structuur.

> Maak een map 'website' en maak in die map weer een map 'img'.  
> Gebruik je html-editor om een nieuw bestand met de naam 'index.html' te maken in de   
> map 'website'.



Als het goed is ziet je folder-structuur er zo uit:

```javascript
website
 |-- img
 |-- index.html
```


Zoek een willekeurig plaatje (bijv. de aap uit het vorige hoofdstuk) en sla dit op in de map 'img'.
Hernoem de afbeelding naar 'plaatje.jpg'.
Je folder-structuur ziet er nu zo uit:

```javascript
website
 |-- img
     |-- plaatje.jpg
 |-- index.html
```


> Maak een website met een titel en een paragraaf<br>
> Je mag de titel en de tekst in de paragraaf zelf verzinnen. <br>
> Onder de paragraaf zorg je er voor dat de afbeelding 'plaatje.jpg' wordt weergegeven


Als het goed is ziet je code er ongeveer zo uit.....

```html

<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <title>Mijn eerste website met plaatje!</title>
</head>
<body>
    <h1>Hier een mooie afbeelding!</h1>
    <p>Ik ben echt goed bezig met dat HTML!</p>
    <img src="img/plaatje.jpg">
</body>
</html>

```

## Tips
* Bij het attribuut 'src' in de tag 'img' is gebruik gemaakt van een relatieve verwijzing.  
* Er wordt verwezen naar een plek relatief t.o.v. de pagina.  
* Vanaf de pagina index.html ga je naar het mapje img en daar vind je 'plaatje.jpg'  
* Een absolute verwijzing begint altijd met http of https. Er wordt verwezen naar een plek die niet relatief is aan de pagina.
