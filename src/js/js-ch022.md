---
title: Javascript arrays
date: 2022-04-12
---

# {{ course-title }}

## {{ title }}
### Leerdoelen
* Je weet wat een array is en wat je er mee kunt doen.
* Je kunt zelf arrays maken en elementen uit een array laten weergeven
* Je kunt elementen aan een array toevoegen en verwijderen
* Je kunt bewerkingen op alle elementen in een array laten uitvoeren

### Wat is een array
* Een array in javascript is vergelijkbaar met arrays in andere programmeertalen. 
* Een array is een variabele die meerdere waarden kan bevatten. 
* Een array kan verschillende type waarden bevatten (strings, numbers, arrays, objects etc.)
* Je maakt arrays met behulp van 'squared brackets []'.
```javascript
const myArray = [1,2,3,4,"Jan"];

//Alle waarden uit myArray weergeven in de console...
for(let i = 0; i < myArray.length; i++) {
    console.log(myArray[i]);
}
```
### Bewerkingen
* Een element toevoegen aan een array `array.push('hallo')`
* De laatste waarde uit een array verwijderen `array.pop()`
* Vind meer bewerkingen op [w3schools](https://www.w3schools.com/js/js_array_methods.asp)

### Weergeven
``` javascript
const myArray = [1,2,3,4,"Jan"];

//Een elemement uit een array weergeven
console.log(myArray[0]) // 1 wordt weergegeven in de console

//Een element opzoeken en laten zien op welke positie het staat..
console.log(myArray.indexOf("Jan")) // 4 wordt weergegeven in de console

//Alle elementen uit een array weergeven:
for(i = 0; i < myArray.length; i++) {
    console.log(myArray[i])
}
```

## Uitleg
* [Alles over arrays op w3schools](https://www.w3schools.com/js/js_arrays.asp)
* [Alles over arraymethods](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array)

> #### Oefening
> Monkey Shuffle is een webpagina met 9 plaatjes van apen. Door de pagina te verversen worden de plaatjes door elkaar gehusseld. In de code wordt gebruik gemaakt van een array met de namen van de plaatjes.  
> Zoek 9 afbeeldingen van je favoriete dier en zorg dat ze zijn uitgesneden op het formaat 300 bij 300 pixels.

{% video "videoseries?list=PLBtXOV0WuE_Gr-IkHBd6452qbcWdTfgRC" %}

