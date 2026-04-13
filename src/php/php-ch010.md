---
title: Introductie
date: 2022-04-01
---

# {{ course-title }}

## {{ title }}
{% video "fw5ObX8P6as" %}
{% video "TbHPaZXHgbA" %}
### Voor wie is deze cursus bestemd?
* Je hebt al ervaring met HTML en CSS
  * PHP werkt samen met deze talen, dus zonder kennis van HTML en CSS kun je PHP alleen gebruiken op de commandline.
* Je hebt nog geen ervaring met PHP. Programmeren is nieuw voor je, maar je wilt het graag leren.
* Je weet nog niet precies wat je wilt gaan programmeren. PHP is flexibel dus handig om mee te beginnen.
* Je wilt later misschien in een andere taal programmeren. PHP is heel geschikt om webapplicaties te maken, maar de basis programmeer-technieken kun je in iedere programmeertaal toepassen.

### Voor wie is deze cursus niet bestemd?
* Je hebt een aversie tegen code en programmeren.
* Je hebt al veel programmeerervaring en je wilt aan de slag met OO programming en frameworks. Deze onderwerpen komen in een andere cursus aan de orde. Deze cursus bereidt je daar wel op voor!

### Een ontwikkelomgeving
Om te starten met PHP heb je een ontwikkelomgeving nodig.
De populairste editors voor PHP op dit moment zijn PHPStorm van Jetbrains en Visual Studio Code van Microsoft. Beide editors zijn voor meerdere platforms beschikbaar en ze zijn buitengewoon geschikt om php-applicaties mee te maken.
PHPStorm biedt een educatieve license waarvan studenten gratis gebruik kunnen maken. PHPStorm is helemaal ingericht op het werken met PHP. Na installatie kun je meteen aan de slag.  
Visual Studio Code is een veelzijdige open source editor die je voor allerlie programmeertalen kunt gebruiken. Om de editor goed tot zijn recht te laten komen met PHP moet je nog wat instellingen en extensies aanpassen. Er staat een goed artikel met tips op [digitalocean.com](https://www.digitalocean.com/community/tutorials/how-to-set-up-visual-studio-code-for-php-projects)

Hieronder zie je wat je nodig hebt om te beginnen....

### De servers van XAMPP
* 'X' van cross-platform
  * Linux, Mac, Windows
* Apache webserver
* MySQL database server
* PHP interpreter

In onderstaande video kun je zien hoe je XAMPP installeert. 
XAMPP wil nog wel eens conflicteren met VMWare. Dit komt omdat ze allebei server willen spelen op dezelfde serverpoort.  
Dit kun je oplossen door in de preferences van VMWare bij 'Shared VMs'het poortnummer aan te passen van '443' naar '4443'.
Als 'Shared VMs' niet in het lijstje preferences voorkomt, dan moet je waarschijnlijk VMWare updaten. Dit doe je onder het menu 'help'

{% video "videoseries?list=PLBtXOV0WuE_GKUVvPsP-ms6ZgBKRMktri" %}

## Een website op internet
Je kunt je websites ook op internet publiceren. Hiervoor heb je een hostingbedrijf nodig.  Een hosting-bedrijf biedt meestal een aantal pakketten aan. Je hebt een pakket nodig waar je minimaal 1 database en 1 domeinnaam en website krijgt. Het pakket moet naast MySQL (database) ook PHP ondersteunen. Voorbeelden van hosting-bedrijven zijn:
* Antgonist
* Cloud86
* Siteground
* Argeweb
(bron: [hostingvergelijker](https://hostingvergelijker.nl/))

## De built-in webserver van PHP
* PHP heeft een ingebouwde webserver
* Zorg ervoor dat je vanuit iedere map op je systeem `php` kunt opstarten
* Stel je maakt een bestand test.php
* Start de server vanuit de map waar ook test.php 

```shell
php -S localhost:8888
```

* Als je nu naar je browser gaat kun je met de url: http://localhost:8888/test.php je pagina bekijken.
* PS: Dat `8888` kun je ook vervangen voor een ander getal (iets tussen 8000-9000 is gebruikelijk)