---
title: Loops
date: 2022-04-06
---

# {{ course-title }}

## {{ title }}

{% video "4Cscmo5lqJY" %}
{% video "P2ittuO3MhM" %}

Wat ga je leren
* Je gaat leren hoe je opdrachten in een herhaal-lus kunt uit laten voeren.
* Je weet hoe je een herhaal-lus met de opdracht 'for' kunt maken
* Je kunt een herhaal-lus maken met de opdracht 'while'.
* Je gaat leren hoe je een array met waarden kunt doorlopen met 'foreach'

Hieronder zie een voorbeeld van een for-lus. Een for-lus start met het initialiseren van een variabele. 
* Tussen de haakjes krijgt de variabele $i de waarde 0.
* Na de eerste ';' wordt een voorwaarde gesteld voor het doorlopen van de lus. $i moet kleinder zijn dan 5 om verder te kunnen.
* Na de tweede ';' wordt de waarde van $i met 1 verhoogd. ($i++ is hetzelfde als $i = $i + 1).
 
De code 'echo $i' wordt uitgevoerd zolang $i kleiner is dan 5.  

| lus | waarde $i | conditie | output |  
|:---:|:---:|:---:|:---:|
| 1 | 0 | $i < 5 | 1 |
| 2 | 1 | $i < 5 | 2 |
| 3 | 2 | $i < 5 | 3 |
| 4 | 3 | $i < 5 | 4 |
| 5 | 4 | $i < 5 | 5 |
| 6 | 5 | $i < 5 | geen |
Einde lus

````php
<?php
    for($i = 0; $i < 5; $i++) {
        echo $i."<br>";
    }
?>
````
Hetzelfde voorbeeld werkt met een while-lus. Een while-lus heeft wel een conditie, maar het initialiseren en ophogen van een variabele moet je zelf doen!

`````php

$i = 0; //initialiseren variabele
while($i < 5) {
    //Doe iets...
    $i++ //ophogen variabele
}
    
`````

Arrays kun je met een foreach-lus doorlopen. 

`````php
$fruitmand = ["banaan", "appel", "citroen"];

foreach($fruitmand as $fruit) {
    echo $fruit;
}
   
`````
