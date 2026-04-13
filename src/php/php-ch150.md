---
title: Proeftoetsen
date: 2022-04-12
---

# {{ course-title }}

## {{ title }}

### Pizzeria
Pizzeria "circulare delicioso" is bezig met de realisatie van een website waar je een pizza kunt bestellen.
Maak onderstaand formulier en zorg ervoor dat de juiste prijs voor de pizza wordt berekend!

<div class="html">
<div>
  <img style="width:100px;display:block;" src="/_assets/php/pizzas/spianata_piccante.jpg">
  <input type="radio" name="pizza" id="spianata_piccante" value="12.50" checked>
  <label for="spianata_piccante">
      Pizza Spianata Piccante &euro; 12,50
  </label>
</div>
<div>
  <img style="width:100px;display:block;" src="/_assets/php/pizzas/seppi.jpg">
  <input type="radio" name="pizza" id="seppi" value="11.50">
  <label for="seppi">
      Pizza Seppi &euro; 11,50
  </label>
</div>
<div>
  <img style="width:100px;display:block;" src="/_assets/php/pizzas/tirato.jpg">
  <input type="radio" name="pizza" id="tirato" value="10.50">
  <label for="tirato">
      Pizza Tirato  &euro; 10,50
  </label>
</div>
<div>
  <input type="checkbox" id="olijven" name="olijven">
  <label for="olijven">
      Ik wil extra olijven bijbestellen &euro; 2,50
  </label>
</div>
<div>
  <input type="checkbox" id="kaas" name="kaas">
  <label for="kaas">
      Ik wil extra kaas bijbestellen &euro; 1,50
  </label>
</div>
<div>
  <input type="checkbox" id="bezorgen" name="bezorgen">
  <label for="bezorgen">
      Ik wil de pizza laten bezorgen &euro; 3,50
  </label>
</div>
<div>
  <input type="submit" value="bestellen!">
</div>
</div>


````php
<?php
//Vanuit het formulier stuur je de waarde door van de pizza en de verschillende opties
//Hier wordt de prijs aan de variabelen $pizza, $kaas, $olijven  en $bezorgd toegekend.
$pizza = 0;
$kaas = 0;
$olijven = 0;
$bezorgd = 0;

if(isset($_POST['pizza'])) {
   $pizza = $_POST['pizza'];
}
if(isset($_POST['kaas'])) {
    $kaas = $_POST['kaas'];
}
if(isset($_POST['olijven'])) {
    $olijven = $_POST['olijven'];
}
if(isset($_POST['bezorgd'])) {
    $bezorgd = $_POST['bezorgd'];
}
//Vul de code aan om te voldoen aan het testscenario

````

#### Testscenario
Als je een pizza Tirato besteld met extra kaas en je laat hem bezorgen, dan zie je op het scherm:  

Bedankt voor uw bestelling!
* U heeft een pizza: &euro; 10,50
* U heeft extra kaas besteld: &euro; 1,50
* U wilt de pizza laten bezorgen: &euro; 3,50
* Als de pizzabezorger komt moet u &euro; 15,50 betalen!

Als je een pizza Spinacio Piccante  besteld met extra olijven en je laat hem **niet** bezorgen, dan zie je op het scherm:

Bedankt voor uw bestelling!
* U heeft een pizza: &euro; 12,50
* U heeft extra olijven besteld: &euro; 1,50
* U komt de pizza zelf afhalen
* U betaalt &euro; 14,00 aan onze kassa.

## Timmerbedrijf

Timmerbedrijf "Houtmans" is bezig met een calculatieprogramma. Zij willen uit kunnen rekenen wat het kost om hout te bestellen om bijvoorbeeld een tafel te maken.
Voor het tafelblad kun je kiezen uit drie verschillende houtsoorten. 
Verder kun je kiezen voor een rond of voor een rechthoekig blad. De applicatie rekent het aantal m2 uit en berekent de prijs.

<div class="html">

<div>
  <img style="width:100px;display:block;" src="/_assets/php/hout/berken.jpg">
  <input type="radio" name="hout" id="berken" value="9.50" checked>
  <label for="berken">
      Berken - prijs per m2 &euro; 9,50
  </label>
</div>
<div>
  <img style="width:100px;display:block;" src="/_assets/php/hout/grenen.jpg">
  <input type="radio" name="hout" id="grenen" value="8.50">
  <label for="grenen">
      Grenen - prijs per m2 &euro; 8,50
  </label>
</div>
<div>
  <img style="width:100px;display:block;" src="/_assets/php/hout/hardhout.jpg">
  <input type="radio" name="hout" id="hardhout" value="11.50">
  <label for="hardhout">
      Hardhout - prijs per m2 &euro; 11,50
  </label>
</div>
<div>
<input type="radio" name="formaat" id="rechthoekig" value="rechthoekig" checked>
  <label for="rechthoekig">
      Ik wil een rechthoekige tafel
  </label>
</div>

<div>
  <label for="breedte">Breedte in mm</label>
  <input type="number" name="breedte" id="breedte" value="">
</div>
<div>
  <label for="lengte">Lengte in mm</label>
  <input type="number" name="lengte" id="lengte" value="0">
</div>
<div>
<input type="radio" name="formaat" id="rond" value="rond">
  <label for="rond">
      Ik wil een ronde tafel
  </label>
</div><div>
  <label for="diameter">Diameter in mm</label>
  <input type="number" name="diameter" id="diameter" value="0">
</div>
<div>
  <input type="submit" value="bestellen!">
</div>
</div>

## Betonmolen Calculator
Bouwbedrijf Bireco wil graag kunnen uitrekenen hoeveel water, grind en cement er nodig is om beton te kunnen maken.
Voor het bereiden van 1 m3 beton is nodig:
* 325 kg zand
* 650 kg cement
* 1300 kg grind

Je kunt kunt kiezen uit hoogvloeibaar of normaal beton
* Voor 1 m3 hoogvloeibaar beton is 170 liter water nodig
* Voor 1 m3 normaal beton is 160 liter water nodig

<div class="html">
<form action="#" method="post">
    <h4>Formulier betoncalculator</h4>
    Hoeveel m3 beton is er nodig: <input type="number" name="beton" value="1"><br>
    <input type="radio" name="vloeibaarheid" value="160" checked> Normaal<br>
    <input type="radio" name="vloeibaarheid" value="170"> Hoogvloeibaar<br>
    <input type="button" name="knop" value="verstuur">
</form>
</div>

### Uitwerking betoncalculator
```php
<form action="#" method="post">
    <h4>Formulier betoncalculator</h4>
    Hoeveel m3 beton is er nodig: <input type="number" name="beton" value="1"><br>
    <input type="radio" name="vloeibaarheid" value="160" checked> Normaal<br>
    <input type="radio" name="vloeibaarheid" value="170"> Hoogvloeibaar<br>
    <input type="submit" name="knop" value="verstuur">
</form>

<?php 
if(isset($_POST['knop'])) {
    echo "<b>Weergave van wat er is ingevuld</b><br>";
    echo "<p>De hoeveelheid beton is: ". $_POST['beton'] . "m3.</p>";
    echo "<p>De hoeveelheid water die nodig per m3: ". $_POST['vloeibaarheid'] ." liter.</p>";

    echo "Voor ". $_POST['beton'] . "m3 beton is nodig:<br>";
    echo ($_POST['beton'] * 325) . " kg zand<br>";
    echo ($_POST['beton'] * 650) . " kg cement<br>";
    echo ($_POST['beton'] * 1300) . " kg grind<br>";
    echo ($_POST['vloeibaarheid'] * $_POST['beton']) . " liter water<br>";
}
?>
```
## Oefentoets Zwemcalculator
[Download de oefentoets zwemcalculator](/_assets/php/Zwembadcalculator.pdf)