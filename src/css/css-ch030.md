---
title: Classes en Ids
date: 2022-04-03
---

# {{ course-title }}

## {{ title }}


In het vorige hoofdstuk heb je gezien hoe je tags kunt koppelen aan een css-stijl. Soms komt het voor dat je verschillende stijlen toe
wil passen op dezelfde tag. In het voorbeeld van Wilkens zijn de navigatielinks in de header en de footer wit geworden met een zwarte achtergrond.
Wat nou als je in de footer zwarte links op een witte achtergrond wil!  
Dat kan als je gebruik maakt van een class-attribuut of een id-attribuut.

## Class  
Een class-attribuut maak je op de volgende manier:
```css
.mijnstijl {
    background-color:red;
}
```
In bovenstaand voorbeeld heb ik een class gemaakt met de naam 'mijnstijl'. Een class herken je aan de punt die je voor de naam zet.
Om de class toe te passen op een html-element maak je gebruik van het class-attribuut.
```html
<p class="mijnstijl">Deze tekst krijgt een rode achtergrond</p>
```
<div class="html">
<p style="background-color: red">Deze tekst krijgt een rode achtergrond</p>
</div>

Een class kun je meerdere keren toepassen op verschillende html-elementen. Dus:
```html
<p class="mijnstijl">Deze tekst krijgt een rode achtergrond</p>
<a class="mijnstijl" href="/bidibidi.html">Link naar een andere pagina</a>
```
## Id
Een id werkt op dezelfde manier als een class, maar de naamaanduiding begint met een '#' en een id kan maar op 1 html-element worden toegepast.
Bijvoorbeeld:
```css
#title {
    border: 1px solid green;
}
```
In html...
```html
<h1 id='title'>Deze titel krijgt een groene lijn</h1>
```
<div class="html">
<h1 style="line-height:1em; margin:0; padding:2px; border: 1px solid green;">Deze titel krijgt een groene lijn</h1>
</div>

Een id is een zgn. identifier. Er kan maar 1 element met het id 'title' zijn. Het gebruik van id t.o.v. classes is daarom beperkt.

{% video "VgPKZEt3J_g" %}
