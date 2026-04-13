---
title: Media Queries
date: 2022-04-10
---

# {{ course-title }}

## {{ title }}

{% video "videoseries?list=PLwzcTrPriiGYd3q-9inptvru_8UuUCbJ8" %}

Inmiddels is iedereen er wel aan gewend dat je websites en webapplicaties op verschillende devices wil kunnen bekijken. Aangezien die devices niet allemaal even groot zijn, moet een ontwerper er voor zorgen dat een app zich aanpast aan het scherm waarop hij bekeken wordt.
Met behulp van CSS kan een website reageren op de grootte van het scherm waarop hij wordt getoond. Dit doe je met media-queries.
Het responsive maken van een site of app doe je in twee stappen.  
In eerste instantie moet een app zich aanpassen aan de 'viewport' van een device. Door de viewport in te stellen zorgt een device ervoor dat een app optimaal wordt weegegeven. De viewport stel je in in de head van een html-document.
```html
<meta name="viewport" content="width=device-width, initial-scale=1.0">
```
Op [W3Schools](https://www.w3schools.com/css/css_rwd_viewport.asp) en [MDN](https://developer.mozilla.org/en-US/docs/Web/HTML/Viewport_meta_tag) kun je precies zien wat het effect is van de instellingen van de viewport-metatag. De instelling hierboven levert in 99% van de gevallen het resultaat wat je wilt bereiken.  

```css
/* Stel de achtergrond kleur in op geel */
body {
  background-color: yellow;
}

/* Op kleine schermen tot een breedte van 992px wordt de achtergrond nu lichtblauw */
@media screen and (max-width: 992px) {
  body {
    background-color: lightblue;
  }
}

/* Op nog kleinere schermen van 600px of minder, wordt de achtergrond groen */
@media screen and (max-width: 600px) {
  body {
    background-color: green;
  }
}
```

Zoals je in bovenstaand voorbeeld ziet, kun je op basis van de schermgrootte de stijl van elementen in je app aanpassen!





