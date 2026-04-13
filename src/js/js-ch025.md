---
title: Javascript en DOM
date: 2022-04-08
---

# {{ course-title }}

## {{ title }}
### Leerdoelen
* Je hebt kennis van het Document Object Model
* Je kunt in javascript refereren naar HTML-elementen
* Je kunt reageren op events in javascript 

Javascript wordt uitgevoerd door de browser. Je hebt dus geen server nodig! 
Met javascript kun je heel goed HTML-elementen bewerken. HTML-elementen bevinden zich in het Document Object Model. De document objects zijn de html-elementen waaruit een pagina is opgebouwd.

Er zijn verschillende manieren om in javascript aan te wijzen welk html-element opgevraagd of bewerkt moet worden. HTML-elementen kun je voorzien van een id. Dit id kun je gebruiken om css eigenschappen aan te koppelen, maar je kunt het ook gebruiken om javascript controle te geven over een element. Id's van elementen moeten daarom wel uniek zijn.
Probeer onderstaande code...

```html
<!DOCTYPE html>
<html>
  <head>
    <title>Beginnen met Javascript</title>
  </head>
    <body>
      <div id="output">
          Hier komt de output van het javascript
      </div>
    <script>
        console.log(document.getElementById("output"));
    </script>
    </body>
</html>
```
In de console zie je nu het div-element. Als je op het driehoekje klikt in de console zie vervolgens alle eigenschappen van het div-element. 
Sommige elementen kun je aanpassen. Je kunt de waarde van eigenschappen ook opvragen. Probeer maar uit met bijvoorbeeld offetWidth:

```html
<script>
  console.log(document.getElementById("output").offsetWidth)
</script>
```

De eigenschap 'innerHTML' kun je aanpassen. Je ziet het resultaat in de console en in je browservenster.
```html
<script>
  console.log(document.getElementById("output").innerHTML = "Hey joe");
</script>
```
Je kunt ook de stijl aanpassen van elementen met javascript. Als je de achtergrondkleur van de div 'output' wilt veranderen dan kan dat met...
```javascript
document.getElementById("output").style.backgroundColor = '#ffaacc';
```
Om html-elementen een stijl te geven heb je met javascript dezelfde opties als met css.   
De eigenschappen in css worden altijd in 'kebab-case' geschreven. Dat betekent dat het altijd kleine letters zijn waarbij woorden worden gescheiden door een '-' streepje. Bijv. background-color, margin-top of padding-left.  
Dezelfde stijlen worden in javascript in camelCase geschreven (eerste woord kleine letters, opeenvolgende woorden starten met een hoofdletter). Dus backgroundColor, marginTop en paddingLeft.

Hieronder zie je een voorbeeld waarbij een knop reageert op een onclick-event. M.a.w. als je op de knop drukt wordt de code bij <code>onclick</code> uitgevoerd....


<div class="html">
<div id="output">
  Deze tekst gaat van kleur veranderen
</div>
<button onclick='document.getElementById("output").style.color = "#ffaacc";'>Verander de tekst van kleur</button>
</div>

Zo ziet de code er uit....

```javascript
<div id="output">
  Deze tekst gaat van kleur veranderen
</div>
<button onclick='document.getElementById("output").style.color = "#ffaacc";'>
  Verander de tekst van kleur
</button>
```

## Ander voorbeeld
```javascript
<!DOCTYPE html>
<html>
  <head>
    <title>Beginnen met Javascript</title>
  </head>
    <body>
      <div id="output">
          Hier komt de output van het javascript
      </div>
      <p onclick="drukOpKnop()">Druk maar op mij!</p>
    <script>
        let mijndiv = document.getElementById("output")
        
        function drukOpKnop() {
            console.log(mijndiv);
            mijndiv.innerHTML = "Hallo"
            mijndiv.style.border = "1px black solid"
        }

    </script>
    </body>
</html>
```