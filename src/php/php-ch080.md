---
title: Sessions
date: 2022-04-08
---

# {{ course-title }}

## {{ title }}

{% video "VyvjyZbv_6M" %}
{% video "6Rk5-W-_jYM" %}

### Wat ga je leren
* Je gaat leren hoe je variabelen kunt bewaren van de ene pagina naar de andere.
* Je gaat leren hoe je sessions kunt gebruiken voor het bewaren van gebruikers-informatie.


### Wat is een session?
Als een php-pagina wordt opgevraagd van de server, dan zijn alle variabelen beschikbaar totdat er een andere pagina wordt opgevraagd.
Met een sessie wordt bedoeld dat variabelen bewaard blijven ondanks dat er andere pagina's worden geladen.
Een gebruiker die is ingelogd kan op meerdere pagina's zijn naam zien. Dit kan doordat zijn naam in een sessie-variabele is opgeslagen.

### Hoe werkt een sessie
Een sessie in PHP wordt gestart met de functie....
````php
<?php
    session_start();
````
Voordat je sessie-variabelen kunt gebruiken moet de php-functie session_start() worden aangeroepen. Dit moet je op alle pagina's doen waar je sessie-variabelen wilt gebruiken.
Nadat een session is gestart kun je waarden bewaren in de '$_SESSION'-array;
````php
<?php
    session_start();
    $_SESSION['username'] = "piet";
?>
/*--------------Andere pagina-----------------*/
<?php
    //Op een andere pagina kun je de waarde van $_SESSION['username'] weergeven met:  
    session_start();
    echo $_SESSION['username']
?>
````
