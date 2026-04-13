---
title: Events in javascript
date: 2022-04-20
---

# {{ course-title }}

## {{ title }}

Een 'event' is een gebeurtenis in Javascript. Als je op een element klikt dan is dat een 'klik'-gebeurtenis oftewel een 'click'-event.
Als een 'event' plaatsvindt, dan kan je applicatie daarop reageren. Bijv. je klikt op een div-element en daardoor verandert de kleur van het div-element.
Om dit voor elkaar te krijgen moet je de volgende stappen ondernemen:
1. Refereer naar een element met getElementById()
2. Gebruik de referentie om een element naar bepaalde 'events' te laten luisteren
   1. Dit noem je een 'event-listener'
   2. Met een 'event-listener' kun je element laten luisteren naar een 'click-event'
3. Reageer op het 'click-event'

````html
<div id="knop" style="width:100px;height:100px;background-color: lightblue;">Klik me!</div>
<div id="view" style="width:100px;height:100px;">Bla</div>

<script>
   const el = document.getElementById('knop');
   el.addEventListener('click', function() {
      const target = document.getElementById('view');
      target.style.backgroundColor = "red";
      target.innerHTML = "Ik ben geklikt!";
   });
</script>
````
### Een imageslider maken
Bij een imageslider wil je dat je met een klik een andere afbeelding laat zien.


### Hoe maak je een imageslider.
Maak een html-pagina waarin een afbeelding wordt omgewisseld voor een andere afbeelding op het moment dat je er op klikt. Hoe is de aanpak:
* Maak een div-tag waarin een afbeelding wordt weergegeven van bijv. 300 x 400 pixels.
* Maak een achtergrondafbeelding van 3 aanelkaar gemaakte plaatjes. Totaal wordt de afbeelding 300 x 1200 pixels.
* Maak de javascript die de achtergrond-afbeelding steeds 400 pixels naar links verschuift.

<div class="html" style="height:230px;">
   <div id="apen" style="width:800px;
         height:200px;
         border:1px solid black;
         background-image:url('/_assets/js/apen-800.jpg');
         position:absolute;">
   </div>
   <div style="width:266px;border:4px solid red;position:absolute;height:200px;"></div>
</div>

Dit is de css-stijl:
```html
 <style>
     #apen {
         width:400px;
         height:300px;
         border:4px solid black;
         background-image:url('/_assets/js/apen.jpg');
         transition: background-position 2s;
     }
 </style>
```
In de body van het html-document:
```html
<div id="apen"></div>
```
Onderaan de html-pagina in de body komt het script:
```html
<script>
  const apen = document.getElementById('apen');
  let pos = 0;
  apen.addEventListener('click', function() {
      if(pos >= 800) {
          pos = 0;
      } else {
          pos += 400;
      }
      apen.style.backgroundPosition = pos + "px";
  });
</script>
```