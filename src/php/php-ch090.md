---
title: Functions
date: 2022-04-09
---

# {{ course-title }}

## {{ title }}

Wat ga je leren
* Je gaat leren hoe je code kunt hergebruiken.
* Je kunt 3 verschillende typen functies maken.

### Wat zijn functions?
Functions zijn stukjes code die je vaker gebruikt in je applicatie. Door de code in een function op te nemen kun je met 1 commando een heel stuk code uit laten voeren.
Stel dat je in een webpagina vaak een dubbele lijn wilt tekenen. Dan kun je natuurlijk steeds 40 x een "="-teken typen, maar dit kun je makkelijk automatiseren met een function!
```php
<?php
function tekenDubbeleLijn() {
    for($i = 1; $i <= 40; $i++) {
        echo "=";
    }
 }
?>

<p>Hier een stukje tekst met daaronder een mooie dubbele lijn!</p>
<?php tekenDubbelelijn(); ?>
<p>En dan nog wat tekst en opnieuw een dubbele lijn....</p>
<?php tekenDubbelelijn(); ?>

```
Resultaat:
<div class="html">
<p>Hier een stukje tekst met daaronder een mooie dubbele lijn!</p>
========================================
<p>En dan nog wat tekst en opnieuw een dubbele lijn....</p>
========================================
</div>

#### Functions die je argumenten mee kunt geven
Stel dat je een toetscijfer om moet zetten in een (O)nvoldoende, (V)oldoende of (G)oed waardering.
De formule is dan: 
* Als het cijfer gelijk of hoger is dan een 8, dan wordt de waardering (G).
* Als het cijfer gelijk of hoger is dan een 5.5 dan wordt de waardering (V).
* Als het cijfer lager is dan een 5.5 dan wordt de waardering (O).

Als je meerdere cijfers om moet zetten naar een OVG-waardering, dan is het handg als je de code kunt herhalen met steeds een ander cijfer!
```php
function ovgWaardering($cijfer) {
    if($cijfer >= 8 && $cijfer <= 10) {
        $waardering = "G";
     } elseif($cijfer >= 5.5 && $cijfer <= 10) {
        $waardering = "V";
     } elseif($cijfer < 5.5 && $cijfer >= 1) {
        $waardering = "O";
     } else {
        $waardering = "invalid!";
     }
     echo $waardering;
}
```
Je kunt de function aanroepen met een cijfer als argument.
```php
<p>De OVG-waardering voor het cijfer 4 is: <?php ovgWaardering(4); ?></p> //Output: O
<p>De OVG-waardering voor het cijfer 9 is: <?php ovgWaardering(9); ?></p> //Output: G
<p>De OVG-waardering voor het cijfer 11 is: <?php ovgWaardering(11); ?></p> //Output: invalid!
```
#### functions die een waarde retourneren
Bij een functie die wordt gebruikt om iets te berekenen kun je de uitkomst van de berekening retourneren
```php
function telOp($a, $b) {
    return $a + $b;
}

$c = telOp(4,5); //$c is 9
```
