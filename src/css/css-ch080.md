---
title: Flexbox
date: 2022-04-08
---

# {{ course-title }}

## {{ title }}


Flexbox is een redelijk nieuwe functionaliteit in CSS. Voorheen kon je elementen positioneren door ze uit de element-flow te halen met de eigenschappen float en position, maar je moest dan toch wat 'hacks' gebruiken om elementen in de juiste positie te krijgen. Flexbox biedt een oplossing om elementen of verticaal of horizontaal goed te positioneren (1-dimensionaal).
In het volgende hoofdstuk wordt Grid behandeld. Grid is een tweede mogelijkheid om beter te positioneren. Grid werkt 2-dimensionaal.
Een veel voorkomend voorbeeld is een website met een header waarin een logo links wordt geplaatst en de navigatie rechts....

```html
<style>
    div#logo {
        float: left;
        background-color:black;
        color:white;
        font-size:24px;
        font-weight:800;
    }
    nav {
        float: right;
    }
</style>
<header>
    <div id="logo">L</div>
    <nav>
        <a href="#home">home</a>
        <a href="#producten">producten</a>
        <a href="#overons">over ons</a>
        <a href="#contact">contact</a>
    </nav>
</header>

```
<div class="html">
<div id="logo" style="
    background-color: 
    black; color: white; 
    float: left; 
    font-size:36px; 
    font-weight:800; 
    height:50px; 
    width:50px;
    text-align:center;
    vertical-align:center;
    padding-top:0px;
">L</div>
    <nav style="float: right">
        <a href="#home">home</a>
        <a href="#producten">producten</a>
        <a href="#overons">over ons</a>
        <a href="#contact">contact</a>
    </nav>
<p style="clear:both"></p>
</div>  


Het lijkt er wel op, maar je ziet dat het grijze vlak (de header) niet meer doorloopt achter het logo en de navigatielinks. De eigenschap float maakt elementen 'zwevend' door ze uit de normale element-flow te halen. Ze nemen dan ook geen ruimte meer in beslag t.o.v. de omliggende elementen. Er is een 'hack' nodig om de header achter het logo en de navigatie door te laten lopen.

```html
<style>
    header:after {
        content:'';
        display:block;
        clear:both;
    }
</style>
```
<div class="html">
<div id="logo" style="
    background-color: 
    black; color: white; 
    float: left; 
    font-size:36px; 
    font-weight:800; 
    height:50px; 
    width:50px;
    text-align:center;
    vertical-align:center;
    padding-top:0px;
">L</div>
    <nav style="float: right">
        <a href="#home">home</a>
        <a href="#producten">producten</a>
        <a href="#overons">over ons</a>
        <a href="#contact">contact</a>
    </nav>
<p style="clear:both"></p>
</div> 
<code-pen href="https://codepen.io/janjaapsiewers/pen/BaRELXN" title="Float hack"></code-pen>

Grid en flexbox bieden oplossingen voor dit soort layout-problemen. Geen ingewikkelde hacks meer, maar een heldere structuur en logische waarden en eigenschappen.
In Flexbox kunnen we bovenstaand probleem makkelijk oplossen.....

```html
<style>
    header {
        display: flex;
        flex-direction: row;
        justify-content: space-between;
    }
</style>
```
Hiermee geef je aan dat de elementen in de header in de 'row'-richting (=horizontaal) worden verdeeld. 
Met 'justify-content: space-between' wordt bepaald dat de ruimte die overblijft wordt verdeeld tussen de elementen.
Het logo komt links, de 'nav' komt helemaal rechts want de ruimte die overblijft komt tussen de elementen.


<div class="html" style="display: flex; justify-content: space-between;">
<div id="logo" style="
    background-color: 
    black; color: white; 
    float: left; 
    font-size:36px; 
    font-weight:800; 
    height:50px; 
    width:50px;
    text-align:center;
    vertical-align:center;
    padding-top:0px;
">L</div>
    <nav style="text-align:right;">
        <a href="#home">home</a>
        <a href="#producten">producten</a>
        <a href="#overons">over ons</a>
        <a href="#contact">contact</a>
    </nav>
</div> 

Hieronder nog een paar voorbeelden met flexbox...

```html
<style>
div#container {
    display:flex;
    justify-content: space-between;
}

div.item {
    height: 50px;
    width: 50px;
}
</style>

<div id="container">
    <div class="item"></div>
    <div class="item"></div>
    <div class="item"></div>
</div>

```
<style>
 div.flexitem {
    height: 50px;
    width: 50px;
    background-color:red;
    border: 1px black solid;
}
</style>
<div class="html" style="display:flex; justify-content: space-between;">
<div class="flexitem"></div>
<div class="flexitem"></div>
<div class="flexitem"></div>
</div>

```html
<style>
div#container {
    display:flex;
    justify-content: space-between;
    flex-direction: column;
    height:200px;
}

div.item {
    height: 50px;
    width: 50px;
    background-color:red;
}
</style>

<div id="container">
    <div class="item"></div>
    <div class="item"></div>
    <div class="item"></div>
    <div class="item"></div>
    <div class="item"></div>
</div>

```


<div class="html" style="display:flex; justify-content: space-between; flex-direction: column; height:200px; flex-wrap: wrap;">
<div class="flexitem"></div>
<div class="flexitem"></div>
<div class="flexitem"></div>
<div class="flexitem"></div>
<div class="flexitem"></div>
</div>

De flexitems worden onder elkaar geplaatst door de eigenschap 'flex-direction' met waarde 'column'. Er kunnen maar 3 blokjes van 50 pixels onder elkaar. vandaar dat de andere twee blokjes op de helft van de 'wrapper' worden geplaatst. Space-between zorgt er weer voor dat alle ruimte die overblijft wordt verdeeld tussen de elementen.

Er is nog veel meer mogelijk met flexbox. Op [MDN](https://developer.mozilla.org/en-US/docs/Learn/CSS/CSS_layout/Flexbox) en [W3schools](https://www.w3schools.com/css/css3_flexbox.asp) vindt je uitgebreide uitleg en overzichten van de verschillende eigenschappen van de flex-container en de flex-items.
[CSS-tricks](https://css-tricks.com/snippets/css/a-guide-to-flexbox/) heeft ook een uitgebreide uitleg over flexbox.

