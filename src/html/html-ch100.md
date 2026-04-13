---
title: Website vanaf schets
date: 2022-04-10
---

# {{ course-title }}

## {{ title }}
> #### Opdracht 10.1
> Bouw een website voor Wilkens installatiebedrijf.  
> Je hebt een gesprek gehad met Dirk Wilkens over zijn nieuwe website.   
> Hieronder zie je het resultaat van het gesprek in de vorm van  wireframes (= schets).  
> Dirk heeft aangegeven welke onderdelen hij op zijn site wil laten zien.  
> Aan jou en je collega's nu de taak om de html-structuur voor de website te bouwen. 
> Hoe je de aboutus-pagina moet maken wordt uitgelegd in de video! De overige pagina's moet je zelf maken.
> Download hier het [materiaal voor Wilkens website](/_assets/html/wilkens-materiaal.zip)  
> Je kunt deze opdracht met maximaal 4 personen maken. Iedereen werkt minimaal 1 wireframe uit.

Er komt nogal wat bij kijken om een hele website inclusief logo, afbeeldingen, tabel en tekst te maken. 
In de video kun je zien hoe afbeeldingen zijn voorbereid en hoe de HTML structuur is opgezet.

{% video "Z7_NTsPzJKA" %}

## Een HTML structuur opzetten
Nu duidelijk is welke onderdelen op de website getoond moeten worden kunnen we de html-structuur voor de website opzetten.
Hieronder zie je de schetsen die zijn gemaakt voor de nieuwe website. Met een HTML-structuur kunnen we alleen aangeven uit welke onderdelen de website gaat bestaan. Het lukt nog niet om alle onderdelen te stylen en te positioneren.
Bekijk de video's om te zien wat je tot nu toe kunt doen om de website voor te bereiden in HTML.
In de cursus CSS werken we de site verder uit met de juiste positionering en stijl voor de verschillende elementen.

## Wireframes
![Wilkens nieuws](/_assets/html/nieuws@0.5x.png "Wilkens nieuws")
![Wilkens producten](/_assets/html/producten@0.5x.png "Wilkens producten")
![Wilkens overons](/_assets/html/over_ons@0.5x.png "Wilkens over ons")
![Wilkens conract](/_assets/html/contact@0.5x.png "Wilkens contact")

Veel websites hebben een header, een content-gedeelte (main) en een footer. Deze indeling hebben we ook voor Wilkens toegepast.

```javascript
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Wilkens installatiebedrijf</title>
</head>
<body>
<header>
    <nav></nav>
</header>
<main>
    <img src="" alt="wilkens visual">
    <article></article>
    <table></table>
</main>
<footer>
    
</footer>
</body>
</html>
```

