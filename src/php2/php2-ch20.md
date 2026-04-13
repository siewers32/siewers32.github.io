---
title: Composer
date: 2022-04-10
---

# {{ course-title }}

## {{ title }}

Composer is verantwoordelijk voor het automatisch laden van class-bestanden. Dit vereist wel het een en ander aan configuratie zodat composer 'weet' waar classes zich bevinden op je systeem.  
Om composer te gebruiken moet het eerst geïnstalleerd worden. Dat kun je doen op [https://getcomposer.org/](https://getcomposer.org/). 
Na installatie met de installer kun je direct vanuit iedere directory composer gebruiken. Tijdens de installatie voegt de installer de directory waar composer zich bevindt toe aan de PATH directive.

## Opdracht
* Clone de repository [siewers32/composer-test](https://github.com/siewers32/composer-test.git) naar je  laptop.
* Installeer de mdb-database
* run <code>composer</code> install vanuit de directory van de applicatie
  * Dit zorgt er voor dat alle 'dependencies' en classes worden gedownload en geconfigureerd.
  * Je kunt de pakketten die zijn geïnstalleerd zien in composer.json
* Start een lokale webserver vanuit de directory composer-test/public/index.php
  * public/index.php is de single-point-entry voor de website.
* Op dit moment wordt iedere keer dat index.php wordt opgevraagd een film toegevoegd aan de database.
* Zorg ervoor dat de bij het aanroepen van index.php de laatste film van james bond wordt toegevoegd!