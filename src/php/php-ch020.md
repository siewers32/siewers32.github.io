---
title: PHP code maken
date: 2022-04-02
---

# {{ course-title }}

## {{ title }}
{% video "b5eiCz-GtB0" %}

## Wat ga je leren
In dit onderdeel leer je:
* PHP code te combineren met HMTL en CSS
* Commentaar schrijven in PHP

Om de uitvoer van een PHP-bestand te kunnen bekijken heb je een webserver nodig die is uitgerust met een PHP interpreter.
Als de webserver juist is geconfigureerd zal hij ieder bestand dat eindigt met de extensie .php doorsturen naar de PHP interpreter.
De PHP interpreter herkent PHP-code aan de uitvoermarkeringen '&#60;?php' en '?&#62;'.
Alle code die tussen de uitvoermarkeringen staat wordt uitgevoerd door PHP.

````php
<?php /*  code  */  ?>
````
Als de code is uitgevoerd geeft de PHP interpreter de pagina weer terug aan de webserver en die stuurt de pagina terug naar de browser.  
In het onderstaande voorbeeld wordt het commando 'echo' gegeven. Met 'echo' kun je output genereren. De tekst "Hello World!" wordt als output gegenereerd.


````php
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>

<?php echo "Hello World!"; ?>

</body>
</html>
````

Nadat de PHP interpreter bovenstaande code heeft uitgevoerd, wordt de code hieronder teruggestuurd naar de browser....

````html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>

Hello World!

</body>
</html>
````

.... Je ziet de tekst Hello World! op het scherm!

### Commando's in PHP
In PHP zet je een commando op een nieuwe regel. Je sluit de regel af met een ';'-teken. Bijvoorbeeld...

````php
<?php
    $a = 5;
    $b = "Truus";
    echo "Hello!";
?>
````
### Commentaar in PHP
**Waarom commentaar gebruiken**  
In PHP en andere programmeertalen kun je stukken code voorzien van commentaar. Soms is het nodig om code toe te lichten, zodat andere ontwikkelaars jouw code makkelijker kunnen begrijpen. Sterker nog, als je een tijdje je eigen code niet meer hebt gezien is het een hele zoektocht om uit te vinden hoe alles ook alweer werkt als je geen commentaar hebt gebruikt.

**Hoe gebruik je commentaar in PHP**
````php
<?php
    //Dit is commentaar. De PHP interpreter doet hier niets mee!
    
    /*
        Dit is ook commentaar.
        Als je meerdere regels nodig hebt 
        kun je gebruik maken van een asterisk en een slash!
     */

?>
````