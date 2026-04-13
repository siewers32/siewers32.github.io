---
title: Tekstbewerkingen
date: 2022-04-05
---

# {{ course-title }}

## {{ title }}
Wat ga je leren
* PHP kent een aantal functies waarmee je teksten kunt manipuleren. Je gaat leren hoe je een aantal van deze functies toe kunt passen.
* Tekstfuncties die hier worden besproken zijn:
  * str_replace()
  * strtolower()
  * substr()
  * trim()

Een overzicht van alle string-functies vind je bijvoorbeeld op [W3Schools](https://www.w3schools.com/php/php_ref_string.asp)

Een toepassing van stringfuncties zie je bijvoorbeeld bij blogs.
Om artikelen op een blog goed vindbaar te maken voor zoekmachines is het slim om de titel van het artikel op te nemen in de url. (kijk maar eens hoe ze dat doen op nu.nl).
Bijvoorbeeld:  
De titel van een artikel is: Studenten van het deltion ICT lyceum maken toffe app voor bejaarden!
De url naar dit artikel moet worden: 
https://www.deltion.nl/blog/studenten-van-het-ict-lyceum-maken-toffe-app-voor-bejaarden.  
Om deze url te kunnen maken moeten we een paar string-functies gebruiken.  
* strtolower() - om alle hoofdletters om te zetten naar 'kleine' letters
* str_replace() - om alle spaties om te zetten naar een '-'.
* trim() of substr() - om het uitroepteken uit de titel te verwijderen
* We moeten de bewerkte titel aan de basis-url 'https://www.deltion.nl/blog/' plakken.

```php
<?php

$tekst = strtolower("Studenten van het ICT lyceum maken toffe app voor bejaarden!");
$tekst = str_replace(' ','-', $tekst);
$tekst = trim($tekst, "!");
echo 'https://www.deltion.nl/blog/',$tekst;
//Output is: 
https://www.deltion.nl/blog/studenten-van-het-ict-lyceum-maken-toffe-app-voor-bejaarden
?>
```
> #### Opdracht 5.1
> Vul onderstaande code aan met een stringfunctie zodat het begin van de url wordt omgezet van 'http' naar 'https'

````php
$tekst = "http://www.apple.nl";
// Pas hier de stringfunctie toe;

echo $tekst;
//Output moet zijn: https://www.apple.com
````

> #### Opdracht 5.2
> Zorg ervoor dat de puntjes aan het eind en begin van de tekst worden weggelaten

````php
$tekst = "...Dit is de tekst...";
// Pas hier de stringfunctie toe

echo $tekst;
//Output moet zijn: Dit is de tekst
````
> #### Opdracht 5.3
> In  titels zie je soms dat alle woorden een hoofdletter hebben.
> Bijvoorbeeld "How The West Was Won".
> Zorg ervoor dat je deze title omzet naar "How the west was won".