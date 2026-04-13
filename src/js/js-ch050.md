---
title: Javascript functies
date: 2022-04-16
---

# {{ course-title }}

## {{ title }}

### Leerdoelen
* Je weet wat een ‘functie’ is en wat je er mee kunt doen.
* Je kunt zelf functies maken
* Je kunt functies uit laten voeren in javascript

### Functies
Functies in javascript lijken weer veel op functies in andere programmeertalen. Een functie is een blok code dat je vaker wilt gebruiken.
Javascript heeft zelf functies, maar je kunt ook eigen functies maken.
Dit is zijn functies van javascript....
````javascript
console.log("Deze tekst komt in de console");
alert("Deze tekst verschijnt in een dialog-box");
````

Om een eigen functie te gebruiken moet je hem maken en aanroepen:
````html
<!DOCTYPE html>
<html lang="en">
    <head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
    <script>
        function makeBodyBackgroundYellow() {
            document.body.style.backgroundColor = "yellow";
        }
        makeBodyBackgroundYellow();
    </script>
</body>
</html>
````
Functies kunnen ook argumenten accepteren. Je kunt een object of andere type variabele meegeven in de aanroep van een functie. In het voorgaande voorbeeld krijgt de body een andere achtergrondkleur, maar je kunt ook een HTML-element in de functie-aanroep meegeven. Dat element krijgt een andere achtergrondkleur....
````html
<div id="blokje" style="width:100px; height:100px;"></div>
<script>
    function makeBackgroundYellow(el) {
        el.style.backgroundColor = "yellow";
    }
    makeBackgroundYellow(document.getElementById('blokje'));
</script>
````
Functies kunnen ook waarden retourneren...
````html
<div id="blokje" style="width:100px; height:100px;"></div>
<script>
    function vermenigvuldig(x,y) {
        return x * y;
    }
    document.getElementById('blokje').innerHTML = "De uitkomst is: " + vermenigvuldig(3,4);
</script>
````
Het '+'-teken is nodig om de uitkomst van de functie achter de tekst 'De uitkomst is: ' te plakken.



