---
title: PHP variabelen
date: 2022-04-03
---

# {{ course-title }}

## {{ title }}

{% video "bekcjI9VLyc" %}
{% video "1m-e5XBEfXo" %}
{% video "8RWxC1jfklo" %}

## Wat ga je leren
* Je leert verschillende type data op te slaan in variabelen
* Je leert data te manipuleren door berekeningen uit te voeren met variabelen.
* Je leert verschillende datatypen kennen
  * String
  * Integer
  * Double
  * Array
* Je leert variabelen te combineren met tekst.

## Wat is een variabele
Een variabele is een label dat gekoppeld is aan een plek in het geheugen van de computer. In deze geheugenplek kun je een waarde opslaan. Een waarde kan een getal zijn, een stuk tekst of 1 van de mogelijke datatypen waar PHP mee kan werken.  
Hieronder zie je hoe de waarde 5 aan het label 'var' wordt toegekend. De waarde 5 is nu opgeslagen in het computergeheugen en kan weer opgevraagd worden met $var. Het dollar-teken geeft in php aan dat het om een variabele gaat. 
````php
<?php
  $var = 5;
  echo $var; 
  // De output op het scherm is 5.
  
  $mijn_tekst = "Dit is een stuk tekst dat ik wil bewaren."
  echo $mijn_tekst; 
  // De output op het scherm is "Dit is een stuk tekst dat ik wil bewaren."
  
  $a = 5;
  $b = 2;
  echo $a * $b;
  // De output op het scherm is 10, want 5 maal 2 is 10!
?>
````
PHP kan zelf bepalen wat voor soort waarde er wordt toegekend aan een variabele. 
* Bij $var = 5, bepaalt PHP dat 5 een geheel getal (=integer) is. 
* Een getal waar een komma in voorkomt is een double. 
* Een variabele waar wat tekst in is bewaard is van het type 'string'.  

Je kunt op allerlei manieren berekeningen maken met PHP. Zoals optellen, aftrekken, vermenigvuldigen, delen en nog veel meer. Op [W3Schools](https://www.w3schools.com/php/php_operators.asp) vind je een overzicht van de mogelijke opties.

Je kunt aan PHP ook vragen wat het type is van een variabele....

```php
$var = 5;
echo gettype($var);
// De output is 'integer'

$var = "Stukkie tekst...";
echo gettype($var);
// De output is 'string'

$var = 5.324;
echo gettype($var);
// De output is 'double'

```

### Werken met tekst
Met tekst kun je weliswaar geen berekeningen maken, maar je kunt variabelen en tekst wel met elkaar verbinden. Je gebruikt een "." om een variabele met een tekst te verbinden.

````php
<?php
   $a = "rood";
   echo "Het stoplicht staat op ".$a
   // Output is "Het stoplicht staat op rood"
?>
````

### Arrays
Arrays zijn variabelen die meerdere waarden kunnen bevatten.
Je kunt arrays op verschillende manieren maken....
````php
$var = array("banaan", "peer", 5);
 // of
 $var = ["banaan", "peer", 5];
 // of
 $var[0]="banaan";
 $var[1]="peer";
 $var[2]= 5;
 $var[432] = "wel gek, maar dit kan ook!!!"
````
Als je een waarde uit een array wilt weergeven, moet je dat doen op basis van de index.
````php
echo $var[0]; // output: banaan
echo $var[1]; // output: peer
echo $var[432]; // output: wel gek, maar dit kan ook!!!
````
