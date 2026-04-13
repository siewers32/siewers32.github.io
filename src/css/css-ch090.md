---
title: CSS Grid
date: 2022-04-09
---

# {{ course-title }}

## {{ title }}

{% video "videoseries?list=PLwzcTrPriiGYLgaBP8TQeuPl1Dz4gPZlM" %}

In den beginne was het World Wide Web en HTML vooral bedoeld als alternatief voor de dikke encyclopedie. Je kon nu veel makkelijker informatie terugvinden omdat HTML kon werken met hyperlinks!
Destijds hadden we niet kunnen bedenken dat HTML en CSS gebruikt gingen worden voor het bouwen van webshops en mobiele applicaties.
HTML en CSS moesten dezelfde functionaliteit krijgen als 'moderne' layout-managers die gebruikt worden bij de ontwikkeling van desktop- en mobiele applicaties met bijvoorbeeld Swift en Java.
Inmiddels biedt CSS moderne tools om applicaties vorm te geven. De belangrijkste zijn Grid en Flexbox.  
De naam zegt het al. Op basis van een grid kun je html-elementen positioneren.
```css
#grid-container {
  display: grid;
  grid-template-areas:
    'header header'
    'article nieuws'
    'footer footer';
  gap: 10px;
  padding: 10px;
}

header { 
    grid-area: header;
    background-color: yellow;
}
article {
    grid-area: article;
    background-color: lightgreen;
    height:100px;
}
aside {
    grid-area: nieuws;
    background-color: pink;
}
footer { 
    grid-area: footer;
    background-color: lightblue;
}
```
```html

<div class="html">
    <div id="grid-container">
      <header>
            Dit is de header
      </header>
      <article>
            Dit is een article
      </article>
      <aside>
            Hier komt het nieuws
      </aside>
      <footer>
            Dit is de footer
      </footer>
    </div>
</div>
```
<style>
    #grid-container {
        display: grid;
        grid-template-areas:
        'header header'
        'article nieuws'
        'footer footer';
        gap: 10px;
        padding: 10px;
    }
    
    header { 
        grid-area: header;
        background-color: yellow;
    }
    article {
        grid-area: article;
        background-color: lightgreen;
        height:100px;
    }
    aside {
        grid-area: nieuws;
        background-color: pink;
    }
    footer { 
        grid-area: footer;
        background-color: lightblue;
    }
</style>
<div class="html">
    <div id="grid-container">
      <header>
            Dit is de header
      </header>
      <article>
            Dit is een article
      </article>
      <aside>
            Hier komt het nieuws
      </aside>
      <footer>
            Dit is de footer
      </footer>
    </div>
</div>  


Als je meer over grid wil weten, dan moet je eens kijken op de site van [CSS-tricks.com](https://css-tricks.com/snippets/css/complete-guide-grid/ "CSS Tricks - Grid"). Maar ook [W3 Schools](https://www.w3schools.com/css/css_grid.asp) en [MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout/Basic_Concepts_of_Grid_Layout) hebben uitgebreide hoofdstukken over CSS Grid.



