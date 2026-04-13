---
title: Formulieren
date: 2022-04-09
---

# {{ course-title }}

## {{ title }} 
Formulieren worden gebruikt om een gebruiker input te laten geven. Vervolgens kan met javascript of een serverside script (bijv. php) iets gedaan worden met die input.  
Een formulier start met de &#60;form&#62;-tag.
```html
<form></form>
```
In een formulier kun je gebruik maken van form-elementen. Bijvoorbeeld om je naam in te voeren of om een datum op te geven...
```html
<form action="verwerk_gegevens.php" method="post">
    Voornaam: <input type="text" name="voornaam" value=""><br>
    Geboortedatum: <input type="date" name="geboortedatum"
       value="2015-05-05">
    <input type="submit" value="verstuur">
</form>
```
<div class="html">
<form onSubmit = "return false;">
    Voornaam: <input type="text" name="voornaam" value=""><br>
    Geboortedatum: <input type="date" name="geboortedatum"
       value="2015-05-05"><br>
    <input type="submit" value="verstuur">
</form>
</div>

Je hebt nu kennis gemaakt met het &#60;form&#62; element.
Je ziet dat een form een attribuut 'action' en een attribuut 'method' heeft. De waarde van 'action' (= verwerk_gegevens.php) is in dit geval een server-script dat de gegevens gaat verwerken. De 'method' geeft aan hoe de gegevens naar de server worden verstuurd. In de cursus over PHP krijg je hier meer over.

Je hebt nu kennis gemaakt met 3 formulier-elementen:
* Een input-element van het type text
* Een input-element van het type datum
* Een input-element van het type submit. 
  * Hiermee krijg je een knop waarmee je de gegevens kunt versturen.


## Checkboxes en radiobuttons
Hieronder zie je voorbeelden van een rij checkboxjes en radiobuttons.
```html
<form>
    <p><input type="checkbox" name="snoep" value="0" checked> Drop
    <input type="checkbox" name="snoep" value="1"> Kauwgom
    <input type="checkbox" name="snoep" value="3"> Zure mat</p>   

    <p><input type="radio" name="gebak" value="0" checked> Cheesecake
    <input type="radio" name="gebak" value="1"> Limburgse vlaai
    <input type="radio" name="gebak" value="2"> Chocolade fudge</p>
</form> 
```

<div class="html">
<form>
    <p><input type="checkbox" name="snoep" value="0" checked> Drop
    <input type="checkbox" name="snoep" value="1"> Kauwgom
    <input type="checkbox" name="snoep" value="3"> Zure mat</p>
    <p><input type="radio" name="gebak" value="0" checked> Cheesecake
    <input type="radio" name="gebak" value="1"> Limburgse vlaai
    <input type="radio" name="gebak" value="2"> Chocolade fudge</p>
</form>
</div>

Bij de checkbox kun je meer dingen selecteren. Je kunt kiezen voor kauwgom en een zure mat.
Bij de radiobuttons kun je altijd maar 1 element selecteren
De eerste elementen zijn al voorgeselecteerd. Dat komt door het woordje 'checked'. Je kunt dus van te voren instellen of er al een keuze is voorgeselecteerd.

## Text-area
Met de 'text-area' kun je een flinke lap tekst versturen.

```html
<textarea name="flinke_lap">
    Zoals je ziet heeft een text-area zowel een openingstag als een sluit-tag,  
    dit in tegenstelling tot de input-elementen en het br-element die je niet hoeft af te sluiten. 
    Dit is een beetje inconsequent in html5!
</textarea>
```

Probeer op codepen het formulier aan te passen. Kijk wat er gebeurt als je andere waarden invult bij 'value' en bij 'name'  
