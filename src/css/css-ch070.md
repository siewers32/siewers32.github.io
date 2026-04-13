---
title: Display en position
date: 2022-04-07
---

# {{ course-title }}

## {{ title }}

{% video "xydZkhnZIWw" %}

Om elementen goed te kunnen positioneren is het belangrijk om te weten hoe je browser bepaald waar een element wordt geplaatst. Plaatsing wordt door een aantal eigenschappen beïnvloed. Te weten:
* de display-eigenschap
* de position-eigenschap
* de aanwezige ruimte


#### De display eigenschap

```html
<style>
    div {
        display: block;
        height:100px;
        width:100px;
        background-color:red;
        margin:10px;
        padding:10px;
    }
</style>
<div>
    Dit is een div met tekst
</div>
<div style="background-color:green">
    Dit is nog een div met tekst
</div>
```

<style>
    div.test {
        display: block;
        height:100px;
        width:100px;
        background-color:red;
        margin:10px;
        padding:10px;
    }
    div.test2 {
        display: inline;
        height:100px;
        width:100px;
        background-color:red;
        margin:10px;
        padding:10px;   
    }
    div.test3 {
        display: inline-block;
        height:100px;
        width:100px;
        background-color:red;
        margin:10px;
        padding:10px;  
    }
    div.test4 {
        display: block;
        height:100px;
        width:100px;
        background-color:red;
        margin:10px;
        padding:10px;
        position:relative;
        left:50px;
    }
    div.test5 {
        position:absolute;
        left:50px;
        top: 10px;
        display: block;
        height:100px;
        width:100px;
        background-color:red;
        margin:10px;
        padding:10px;
    }
</style>

<div class="html">
<div class="test">
    Dit is een div met tekst
</div>
<div class="test" style="background-color:green">
    Dit is nog een div met tekst
</div>
</div>



Doordat de waarde van de eigenschap 'display' op 'block' is ingesteld, komen de twee div's onder elkaar te staan.
Als we de waarde van 'display' aanpassen naar 'inline', dan komen de div's naast elkaar te staan.

```css
div {
    display:inline;
}
```

<div class="html">
<div class="test2">
    Dit is een div met tekst
</div>
<div class="test2" style="background-color:green">
    Dit is nog een div met tekst
</div>
</div>
<p></p>
Je ziet dat bij de waarde inline, voor de elementen geen hoogte of breedte kan worden ingesteld. Inline elementen lopen mee met de tekst in een document. Ze worden behandeld alsof het karakters zijn. De ruimte die ze innemen wordt bepaald door de inhoud van de box. De waarden voor padding en margin zijn alleen van toepassing op -left en -right. Boven en onder hebben ze geen invloed.

Je kunt de waarde voor display ook op inline-block instellen. Dan worden de eigenschappen height en width behouden en worden de elementen naast elkaar geplaatst.

```css
div {
    display:inline-block;
}
```
<div class="html">
<div class="test3">
    Dit is een div met tekst
</div>
<div class="test3" style="background-color:green">
    Dit is nog een div met tekst
</div>
</div>

#### De position eigenschap
De meest gebruikte waarden voor de eigenschap position zijn 'static', 'relative' en 'absolute'.
Ook als je zelf niets instelt zijn elementen voorzien van waarden voor eigenschappen zoals display en position.
Een &#60;div&#62; is standaard ingesteld op 'display: block;'
Een &#60;img&#62; is standaard ingesteld op 'display: inline;'
HTML elementen zijn standaard ingesteld op 'position: static;'. Dit houdt in dat elementen worden geplaatst volgens de normale flow van de pagina.
Bij 'position: relative;', kun je een element aanpassen ten opzichte van de positie waar het element volgens de normale flow terecht zou komen. Bijvoorbeeld.
```css
div#groen {
    display: block;
    background-color:green;
    position:relative;
    left:50px;
}
```
<div class="html">
<div class="test">
    Dit is een div met tekst
</div>
<div class="test4" style="background-color:green">
    Dit is nog een div met tekst
</div>
</div>

De onderste div verschuift 50px naar links ten opzichte van zijn 'normale' positie. 

```css
div {
    display:block;
    position:absolute;
    top:10px;
    left:50px;
    background-color:green;
}
```
<div class="html" style="position:relative;">
    <div class="test">
        Dit is een div met tekst
    </div>
    <div class="test5" style="background-color:green">
        Dit is nog een div met tekst
    </div>
    <p style="clear:both;"></p>
</div>

Een div die met 'position: absolute;' is ingesteld, wordt geplaatst ten opzichte van het eerste omliggende element dat zelf gepositioneerd is. In dit geval is het omliggende grijze element voorzien van de instelling "position: relative".



