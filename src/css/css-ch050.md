---
title: Units en maten
date: 2022-04-05
---

# {{ course-title }}

## {{ title }}


Je kunt op meerdere manieren maten definiëren met CSS.
Je kunt werken met vaste waarden (zoals pixels)
Je kunt werken met relatieve waarden (zoals een percentage)
Welke maateenheid je kiest hangt  af van wat je wil bereiken.
Op het Mozilla Developer Network vind je het complete overzicht over maten en waarden.
Hieronder heb ik de belangrijkste uitgelicht.

**Vaste waarden**  
Er zijn meerdere mogelijkheden, maar vaste waarden worden meestal weergegeven in pixels (px).  
Je beeldscherm is opgebouwd uit kleine puntjes. Een waarde van 1 px komt overeen met 1 punt van je beeldscherm.
Je zult ook merken dat een 4k beeldscherm een website kleiner weergeeft dan een full HD scherm van dezelfde grootte.
Bij een 4k scherm staan de beeldpunten dichter bij elkaar.

**Relatieve waarden**  
Soms wil je dat elementen vanzelf meeschalen als je bijvoorbeeld een venster groter maakt.  
Hieronder zie je de maateenheden en de relatie die ze hebben met omliggende elementen. 



| Maateenheid | Relatief tot.. |
| ---- | ---- |
| em | Deze eenheid wordt meestal gebruikt voor lettergrootte. Bij gebruik van em is de lettergrootte relatief aan de lettergrootte van het omliggende element. Je kunt bijvoorbeeld de lettergrootte voor een &#60;div&#62; instellen op 16 pixels. De tekst van een element in die &#60;div&#62; (bijv. &#60;p&#62;) met een waarde van 1 em is zodoende ook 16 pixels. of bij 1.5 em =  1.5 x 16px = 24 px. |
|rem|De rem-eenheid is te vergelijken met em, maar nu is de waarde afhankelijk van een vaste waarde in het root-element.   | 
| % | Percentage relatief tot omliggende element.
| vw | 1% van de viewport. De viewport is vergelijkbaar met de grootte van het venster |
| vh | 1% van de hoogte van de viewport.



Op codepen kun je uitproberen wat onderstaande code doet...

```html
	<style>
		:root {
			font-size: 16px;
		}
	
		.px,
		.vw,
		.em {
			background-color: cyan;
			border: 1px solid blue;
			margin: 10px;
		}
	
		.px {
			font-size: 2rem;
			width: 200px;
		}
	
		.vw {
			width: 10vw;
		}
	
		.em {
			width: 10em;
		}
	</style>    
	<h3>
      Maten en units in css
    </h3>
    <div class="vw">Deze is 10vw breed.</div>
    <div class="em">Deze is 10em breed</div>
    <div class="px">deze is 200px breed en de tekst is 2rem</div>
```
