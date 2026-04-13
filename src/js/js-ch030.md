---
title: Javascript en Formulieren
date: 2022-04-09
---

# {{ course-title }}

## {{ title }}
### Leerdoelen
* Je kunt waarden in formulieren aanpassen
* Je kunt eenvoudige berekeningen maken met javascript

Stel je hebt een formulier en je wilt dat hetgeen je invult in het formulier getoond wordt op de pagina....
```html
<input type="text" id="naam" value=""><br>
<button onclick="kopieerTekst()">Klik hier</button>
<div id="output">Hier komt wat je invult in het formulier!</div>
```

<div class="html">
    <input type="text" id="naam" value=""><br>
    <button onclick="kopieerTekst()">Klik hier</button>
    <div id="output">Hier komt wat je invult in het formulier!</div>
</div>

Om dit werkend te krijgen moet je de volgende stappen maken:
* Maak een script-tag aan
* Gebruik `getElementById()` om de het object waar de naam in staat op aan een variabele toe te voegen
* Lees de waarde uit het input-veld
* Gebruik opnieuw `getElementById()` om te refereren naar het div-element met id 'output'
* Voeg de waarde toe aan `innerHTML`.
* Stop alle code in een function met de naam 'kopieerTekst()'

In javascript ziet dat er zo uit...
```javascript
<script>
    function kopieerTekst() {
        let invoerveld = document.getElementById('naam');
        let invoer = invoerveld.value;
        let outputdiv = document.getElementById('output');
        outputdiv.innerHTML = invoer;
    }
</script>
```

## Rekenmachine

```html
<input type="text" id="waarde1" value=""> +
<input type="text" id="waarde2" value=""><br>
<button onclick="Bereken()">Klik hier</button>
<div id="output">Hier komt de uitkomst</div>
```
<div class="html">
<input type="text" id="waarde1" value=""> +
<input type="text" id="waarde2" value=""><br>
<button onclick="Bereken()">Klik hier</button>
<div id="output">Hier komt de uitkomst</div>
</div>

Om dit werkend te krijgen moet je de volgende stappen maken:
* Maak een script-tag aan
* Gebruik `getElementById()` om de het object waar `waarde1` in staat op aan een variabele toe te voegen
* Gebruik `getElementById()` om de het object waar `waarde2` in staat op aan een variabele toe te voegen
* Bereken de uitkomst door waarde1 en waarde2 op te tellen
* Gebruik opnieuw `getElementById()` om te refereren naar het div-element met id 'output'
* Voeg de berekende waarde toe aan `innerHTML`.
* Stop alle code in een function met de naam 'bereken()'

In javascript ziet dat er zo uit...
```javascript
<script>
    function bereken() {
        let waarde1 = document.getElementById('waarde1');
        let waarde2 = document.getElementById('waarde2');
        let uitkomst = waarde1.value + waarde2.value;
        let outputdiv = document.getElementById('output');
        outputdiv.innerHTML = uitkomst;
    }
</script>
```
* Test of alles goed werkt
* Waarschijnlijk gaat er nog iets fout:
    * Als je 7 en 8 invult krijg je als antwoord 78!
* Je moet de invoer nog converteren naar een getal!
* Javascript ziet invoer altijd als tekst vandaar dat de 7 en de 8 gewoon tegen elkaar aan worden geplakt!
* Het omzetten van tekst (string) naar getal (int) doe je met parseInt()
* Uiteindelijk ziet het script er dus zo uit:

```javascript
<script>
    function bereken() {
        let waarde1 = document.getElementById('waarde1');
        let waarde2 = document.getElementById('waarde2');
        let uitkomst = parseInt(waarde1.value) + parseInt(waarde2.value);
        let outputdiv = document.getElementById('output');
        outputdiv.innerHTML = uitkomst;
    }
</script>
```