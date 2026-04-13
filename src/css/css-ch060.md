---
title: Fonts
date: 2022-04-06
---

# {{ course-title }}

## {{ title }}

{% video "PWWw99TyLBU" %}

In moderne webapplicaties worden verschillende lettertypen gebruikt. Je kunt lettertypen indelen in 3 categorieën:
* Systeemlettertypen
* Webfonts
* Variable fonts

#### Wat is een lettertype
Een lettertype bestaat uit een verzameling vectorafbeeldingen van letters. Een vectorafbeelding is eigenlijk een soort wiskundige formule waarmee je de vorm van een letter of afbeelding beschrijft. Als je een svg-bestand opent zie je hoe de code voor een vectorafbeelding eruit ziet. 
In een tekst maak je heel vaak gebruik van dezelfde afbeeldingen. De letter 'e' komt in deze tekst al tientallen keren voor. Het is voor een computer nogal overbodig om voor iedere letter 'e' uit te rekenen hoe die op het scherm getekend moet worden. Het is voldoende om een letter 1 keer uit te rekenen en vervolgens meerdere keren op dezelfde manier te tekenen op het scherm. 

#### Systeemlettertypen
De systeemlettertypen zijn fonts die op iedere computer standaard voorkomen. Voorbeelden zijn Arial, Times, Verdana en meer. Je kunt deze letterstypen zo opnemen in je css-code zonder extra handelingen.

```css
h1 {
    font-family: 'Arial', sans-serif;
}
```
Hierboven wordt voor 'h1' het lettertype 'Arial' ingesteld. Als dit lettertype niet voorkomt in het systeem van de gebruiker, dan maakt de browser gebruik van het sans-serif font. Het sans-serif font is altijd beschikbaar in de browser.

#### Webfonts
Webfonts zijn lettertypen van andere leveranciers die standaard niet voorkomen op de computer van gebruikers. Er zijn gratis webfonts te vinden op o.a. [google fonts](https://fonts.google.com). 
Om webfonts te gebruiken moet je 2 handelingen uitvoeren. Je moet er voor zorgen dat het font (=lettertype) naar de computer van de gebruiker wordt gedownload en je moet het in css toevoegen aan een html-element.
Op de site van Google Fonts krijg je uitleg over het gebruik van de beschikbare lettertypen. Stel dat je het font Roboto wilt gebruken met een dikte van 300.
In de head van je html-bestand moet je ervoor zorgen dat het font wordt gedownload naar de computer van de gebruiker

```html
<!DOCTYPE html>
<html>
    <head>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
    </head>
    <body>
```

```css
h1 {
    font-family: 'Roboto', sans-serif;
}
```

Als je een letter cursief wilt maken of dikker wilt afdrukken, dan heb je daar een ander lettertype voor nodig. Veel verschillende dikten levert veel verschillende lettertypes op. Probeer het aantal lettertypen dat je gebruikt in een site zoveel mogelijk te beperken. All you need is speed, dus minder lettertypes betekent een snellere site!

#### Variable fonts

Als laatste optie heb je de variable fonts. Anders dan bij de webfonts heb je bij variable fonts geen verschillende lettertypen nodig als je letters dikker of dunner wilt maken. Het verdikken of verdunnen van de letters gaat dan electronisch. 
Op [v-fonts.com](https://v-fonts.com/) kun je heel mooi zien hoe variable fonts werken. Op de site van Google Fonts vind je ook variable fonts.

