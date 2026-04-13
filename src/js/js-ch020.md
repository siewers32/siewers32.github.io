---
title: Javascript loops en condities
date: 2022-04-02
---

# {{ course-title }}

## {{ title }}


### Leerdoelen
* Je weet wat een loop is en wat je er mee kunt doen.
* Je kunt zelf loops maken en stukken code herhaaldelijk laten uitvoeren
* Je kunt op basis van een conditie code laten uitvoeren

### Wat is een loop
Een loop in javascript is vergelijkbaar met loops in andere programmeertalen. Je kunt een bewerking herhalen door gebruik te maken van een for-loop. Hieronder zie je de code om de tafel van 5 weer te geven in de console.
```javascript
for(let i = 1; i <= 10; i++) {
    //deze code wordt 5 keer herhaald
    console.log("5 * " + i + " = " + (i * 5));
}
```
### Wat zijn condities
Je kunt in javascript controleren of er aan een bepaalde conditie wordt voldaan. Een conditie is altijd waar of onwaar.
Je kunt bijvoorbeeld checken of de leeftijd van een bezoeker hoger is dan 65.
````javascript
const price = 50;
const leeftijd = 66;
if(leeftijd > 65) {
    //Persoon is ouder dan 65 dus hij/zij krijgt korting!
    let betalen = price - (0.25 * price); // 25% korting!
    console.log(betalen); //Output 37,50
}
````
## Meer over variabelen
Als je een variabele met 'let' maakt, dan is die alleen beschikbaar in de 'blocked scope'. Een block is een bijvoorbeeld de code tussen accolades.

```javascript
if(1 == 1) {
  let y = 3;
}       
console.log('dit is y: ' + y) ;  //Output: Uncaught ReferenceError: y is not defined.
```
De variabele y is tussen de accolades van het if-statement gemaakt waardoor hij niet meer bereikbaar is voor de functie <code>console.log</code>! 
Dit werkt wel....
```javascript
if(1 == 1) {
  let y = 3;
  console.log('dit is y: ' + y) ;  //Output: dit is y: 3 
}      
```
De laatste mogelijkheid is om een variabele met 'const' te maken. Dit wordt een constante genoemd. Een constante is in principe 'immutable' (je kunt hem maken, maar niet meer aanpassen.)
```javascript
  let y = 3;
  y = 5;
  const x = 12;
  x = 13;
  console.log('dit is y: ' + y) ;  
  console.log('dit is x: ' + x) ; //Output: Uncaught TypeError: invalid assingment to const 'x'
```
