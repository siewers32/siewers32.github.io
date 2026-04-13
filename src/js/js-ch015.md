---
title: Javascript Basis
date: 2022-04-02
---

# {{ course-title }}

## {{ title }}
Javascript is een van de belangrijkste programmeertalen van het web.  
Een webpagina bestaat meestal uit:
* HTML - de structuur van de pagina
* CSS - de vormgeving van de pagina
* JS - het gedrag van de pagina en de elementen op de pagina

## Termen
ECMAScript is een standaard. Browsers volgen deze standaard zo dat ze allemaal op dezelfde manier Javascript interpreteren. Zo werkt javascript in iedere browser hetzelfde!
* Node.js
* Javascript vind zijn oorsprong in de browser, maar de motor die javascript interpreteert is tegenwoordig ook buiten de browser te gebruiken. Bijvoorbeeld als server bij node.js.

## Frameworks
#### React,Vue, Angular en jQuery.
Dit zijn frameworks die zijn gebaseerd op javascript. Een framework is een verzameling van functies en objecten waarmee je snel en consequent functionaliteit aan een applicatie toe kunt voegen.

## Hello World met javascript
```html
<!DOCTYPE html>
<html>
  <head>
    <title>Beginnen met Javascript</title>
  </head>
    <body>
    <h1>Een pagina met een inline Javascript!</h1>
    <script>
      console.log('Hello World');
    </script>
    </body>
</html>
```
In bovenstaand voorbeeld is de javascript-code opgenomen in script-tags.  
Je kunt javascript ook opnemen in een extern bestand. Je maakt vervolgens een verwijzing naar het bestand in een script-tag.
```html
 <script src="mijnscript.js"></script> 
```

## Variabelen
Hieronder zie je hoe je een variabele maakt met javascript:

```javascript
let y = 3;  
console.log('dit is y: ' + y) ;  //Output: 3.
```

Er is ook nog de mogelijkheid is om een variabele met 'const' te maken. Dit wordt een constante genoemd. Een constante is in principe 'immutable' (je kunt hem maken, maar niet meer aanpassen.)
```javascript
let y = 3;
y = 5;
const x = 12;
x = 13;
console.log('dit is y: ' + y) ;  
console.log('dit is x: ' + x) ; //Output: Uncaught TypeError: invalid assingment to const 'x'
```

## Output van javascript
Zoals je hebt gezien kun je de output van een javascript weergeven in de console. Dit doe je meestal tijdens het ontwikkelen om te controleren of je applicatie goed werkt. Je kunt de output van javascript ook weer laten geven in HTML elementen.
Je hebt dan een referentie naar een HTML-element nodig en de javascript output die je weer wilt geven.
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
        document.getElementById("output").innerHTML = "Hello World";
    </script>
    </body>
</html>
```
Met 'getElementById' verwijs je naar een element waarvan het 'id' gelijk is aan 'output'. In dit geval is dat de div-tag. innerHTML verwijst naar de content...
```javascript
 <div id="output">hier is de content! </div>
```
De tekst 'Hello World' wordt dus in de div-tag geplaatst!.


## Typen Variabelen
Net als in andere programmeertalen heeft javascript verschillende typen variabelen. Je hoeft bij het declareren van een variabele niet zelf aan te geven wat het type is. Javascript zoekt dat voor je uit!
* string (is een tekst die je maakt door de karakters binnen aanhalingstekens te zetten).
* number (gehele getallen en gebroken getallen, javascript kent geen int of double).
* boolean (true of false)
* array (meerdere elementen)
* object ()

```javascript
const i = "Dit is een string";
const f = 5; // Dit is een number
const y = 6.7 // Dit is ook een number
const z = true // Boolean

const person = {firstName:"John", lastName:"Doe", age:50, eyeColor:"blue"} // Object
console.log(person.firstName); //firstname van person wordt weergegeven in de console.

const a = ["truus", "paard", 2, persons] // array met verschillende type elementen
```

Je kunt variabelen testen met:
```javascript
console.log(typeof(i)); //Geeft string weer in de console
console.log(typeof(f)); //Geeft number weer in de console
console.log(typeof(person)); //Geeft object weer in de console
```
