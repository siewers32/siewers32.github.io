---
title: Boxmodel
date: 2022-04-04
---

# {{ course-title }}

## {{ title }}

{% video "i4edEwy3MH4" %}
Met het boxmodel kun je zien hoe je elementen ten opzichte van elkaar kunt positioneren. 
In principe kun je een html-element zien als een soort box. Een box heeft dan weer inhoud.
Bijvoorbeeld de h1-tag. De h1-tag is een box. De tekst in de tag is de inhoud.  

```php

<h1>Dit is de tekst in de h1-box!</h1>

```
De afstand tussen de rand van de box en de inhoud noem je 'padding'. Met css kun je deze instellen.
Om een en ander zichtbaar te maken geven we de h1 box een gele achtergrondkleur en een zwarte rand.
De css-code komt er dan zo uit te zien:

```css
h1 {
    border: 1px solid black; /* Je kunt meerdere waarden in een keer toekennen aan een border (rand) */
    background-color:yellow;
    padding: 20px; /* De afstand tussen rand en inhoud */
}
```

<div class="html">
    <h1 style="margin-top:50px; border: 1px solid black;background-color:yellow; padding: 20px;">Dit is de tekst in de h1-box</h1>
</div>

Voor een paragraph (&#60;p&#62;) kunnen we hetzelfde doen. We maken de achtergrond lichtblauw.
```css
p  {
    border: 1px solid black;
    background-color:lightblue;
    padding: 20px;
}
```

<div class="html">
    <h1 style="border: 1px solid black;background-color:yellow; padding: 20px; margin:0px;">Dit is de tekst in de h1-box</h1>
    <p style="border: 1px solid black;background-color:lightblue; padding: 20px;margin: 0px;">Dit is een paragraph</p>
</div>

Je ziet dat de paragraph precies onder de box van de h1 terecht komt. Als je tussen twee elementen meer ruimte wilt maken, 
dan gebruik je de eigenschap 'margin'.

```css
p  {
    border: 1px solid black;
    background-color:lightblue;
    padding: 20px;
    margin-top: 20px; /* alleen extra margin aan de bovenkant van <p> */
}
```
<div class="html">
    <h1 style="border: 1px solid black;background-color:yellow; padding: 20px; margin:0px;">Dit is de tekst in de h1-box</h1>
    <p style="border: 1px solid black;background-color:lightblue; padding: 20px;margin-top: 20px;">Dit is een paragraph</p>
</div>

De afstand tussen de h1 en de paragraph is nu 20 pixels.  
Zo ziet het boxmodel er uit:

<div class="html">
    <div style="border:dotted 2px black;height:300px;width:300px;background-color: white; text-align:center; margin:auto;">
        Margin
        <div style="border:solid 2px black;height:250px;width:250px;background-color: white; text-align:center; margin:auto;color:white; background-color:#333;">
            Border
            <div style="border:solid 2px black;height:200px;width:200px;background-color: white; text-align:center; margin:auto; color:black;">
                Padding
                <div style="border:solid 2px black;height:150px;width:150px;background-color: white; text-align:center; margin:auto;">
                    Inhoud
                </div>
            </div>
        </div>
    </div>
</div>

Afstand tussen elementen regel je met margin 
(margin is alle zijden, met margin-top, margin-bottom, margin-right en margin-left kun je de afstand vanaf een bepaalde zijde instellen).  
Afstand tussen de inhoud en de rand van een element stel je in met padding. (padding, padding-top, padding-bottom, padding-right en padding-left) 
De border is de rand om een element. De border stel je in met 3 waarden. De stijl van de border, de dikte en de kleur.
Bijv. border: 1px solid black; 
Afzonderlijke borders stel je in met border-bottom, border-top, border-right en border-left.

Bij de Wilkens website hebben we te maken met de navigatie...
```html
      <nav>
        <a href="#nieuws">Nieuws</a>
        <a href="#over-ons">Over ons</a>
        <a href="#producten">Producten</a>
        <a href="#contact">Contact</a>
      </nav>
```
We kunnen met de padding van het &#60;nav&#62;-element zorgen dat de links wat afstand van de rand hebben
Door de margin aan te passen komt er meer ruimte tussen de verschillende links

```css
nav {
    background-color:lightgrey;
    padding: 10px;
}

a {
    margin-right:20px;
}
```
<div class="html">
    <nav style="background-color: lightgrey; padding:10px;">
        <a style="margin-right:20px;cursor:pointer;" onclick="return false;" href="#nieuws">Nieuws</a>
        <a style="margin-right:20px;cursor:pointer;" onclick="return false;" href="#over-ons">Over ons</a>
        <a style="margin-right:20px;cursor:pointer;" onclick="return false;" href="#producten">Producten</a>
        <a style="margin-right:20px;cursor:pointer;" onclick="return false;" href="#contact">Contact</a> 
    </nav>
</div>


