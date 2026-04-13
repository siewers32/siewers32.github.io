---
title: Condities
date: 2022-04-04
---

# {{ course-title }}

## {{ title }}
{% video "MuG4vXQ5YSo" %}
{% video "wbC3kI9ygHA" %}

## Wat ga je leren
* Je leert hoe je code uit kunt laten voeren als er wordt voldaan aan een conditie.
* Je leert de volgende code elementen
  * if statement
  * ternary operator
  * switch statement.
  
## Het if-statement
Met het if-statement kun je een conditie inbouwen die bepaalt welke code uitgevoerd moet worden.

```php
<?php
	
$a = 6;
$b = 7;

if ($a > $b) {
	//voer deze code uit als het waar is;
} else {
	//voer deze code uit als het niet waar is;
}

```
> #### Opdracht 4.0
> Met de functie <code>in_array('10', $mijnarray)</code> kun je controleren of het getal <code>10</code> in de array <code>$mijnarray</code> voorkomt.
> Maak een conditie waarin je controleert of 'appel' voorkomt in een array met fruit.
> De code geeft "appel komt wel degelijk voor in de array" op het scherm, maar als je de appel uit de array fruit verwijderd zie je "Er is geen appel in de array!"
```php
$fruit = ["appel", "banaan", "meloen"];
if ( in_array(... , ...) ) {
  echo "appel komt wel degelijk voor in de array";
} ..... {
  echo .......
}
```

Je kunt condities ook combineren met '&&' en '||'. '&&' betekent dat je twee of meer condities wilt combineren. Alle condities moeten dan 'waar' zijn. Met '||' kun je eveneens twee of meer condities combineren. Dan geldt dat 1 van de condities 'waar' moet zijn.

`````php
$cijfer = -11;
// && betekent "en"! Beide condities moeten "waar" zijn.
if($cijfer < 5.5 && $cijfer > 0) {
    $waardering = "onvoldoende";
} elseif($cijfer >= 5.5 && $cijfer <= 10) {
    $waardering = "voldoende";
} else {
    $waardering = "niet valide!";
}
echo $waardering;

// Twee strepen || betekent "of"
if($cijfer > 5.5 || $cijfer < 4.5) {
    echo "Je cijfer is groter dan 5.5. of kleinder dan 4.5";
}
`````

> #### Opdracht 4.1
> Een rondvaartboot op de Seine in Parijs heeft speciale tarieven voor mensen die een tochtje willen maken.  
> * Normaal kost een kaartje 12 euro  
> * Baby's kunnen gratis mee  
> * Kinderen 3 t/m 16 jaar krijgen 50% korting  
> * Ouderen 65+ krijgen 25% korting  
> 
> Maak een programma in PHP met een variable voor een leeftijd  
> Het programma berekent de prijs die betaald moet worden voor een tochtje  
> Maak gebruik gebruik van een 'if'- 'else'-constructie om het juiste bedrag te berekenen.
> Voer onderstaand testplan uit:
>
>| leeftijd &nbsp; &nbsp; |bedrag &nbsp; &nbsp;| resultaat
>|--------- |------  |---|
>| 15 | 6 euro |?|
>| 2 | gratis |?|
>| 24 | 12 euro |?|
>| 66 | 9 euro  |?|

### Ternary operator
Het if-statement kun je ook nog verkort weergeven.
Als de leeftijd groter is dan 65 dan wordt er 25% korting gegeven op het tarief.
Als de leeftijd niet groter is dan 65 dan wordt het volledige tarief in rekening gebracht.
Met de ternary-operator werkt dit zoals hieronder weergegeven:
```php
($leeftijd > 65 ) ? $tarief - (0,25 * $tarief) : $tarief ;
```


>#### Opdracht 4.2
> Voor een toets geldt de volgende cesuur ( = welke cijfer je krijgt bij een aantal gescoorde punten)
> 
>|Aantal punten| 0   |  1  |  2  |  3  |  4  | 5   |  6  |  7  |  8  |  9  |  10 | 11  | 12  | 13  | 14  | 15  | 16  | 17  |
>|:---|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
>|Cijfer| 1,0 | 1,6 | 2,1 | 2,6 | 3,2 | 3,7 | 4,2 | 4,8 | 5,3 | 5,8 | 6,3 | 6,9 | 7,4 | 7,9 | 8,5 | 9,0 | 9,5 | 10,0|
> 
> Laat het programma berekenen of opzoeken wat je cijfer is bij het behalen van een willekeurig aantal punten.  
> Je laat op het scherm weergeven of je een voldoende of een onvoldoende hebt behaald.  
> TIP: Kijk bij het onderdeel variabelen hoe je waarden uit een array op kunt vragen!

```php
<?php
  $cesuur = array(1.0, 1.6, 2.1 .......);
  $aantal_punten = 12;
  $cijfer = .....
  
  $if(....) {
  
  } else {
  
  }
?>
```

