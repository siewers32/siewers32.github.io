---
title: Veel voorkomende tags
date: 2022-04-04
---

# {{ course-title }}

## {{ title }} 
Een aantal tags die je veel tegenkomt zijn bijvoorbeeld:
h1...h6, body, div, p, br, ul, ol, nav, img, a, en main. Deze tags worden hier behandeld.

# Dit is een h1 tag
## dit is een h2 tag
### dit is een h3 tag
#### dit is een h4 tag
##### dit is een h5 tag
###### dit is een h6 tag

De \<p\>-tag staat voor paragraaf  
Een \<div\> is een element waarin je afbeeldingen of tekst kun insluiten.  
Een \<br\> is een 'break'. Hiermee ga je naar de volgende regel.  
Een \<ul\> staat voor unordered list die weer bestaat uit \<li\>-elementen:  
* Dit is een unordered
* list. Dat zie je aan die bolletjes
* voor de tekst.

```html
<ul>
    <li>Dit is een unordered</li>
    <li>list. Dat zie je aan de bolletjes</li>
    <li>voor de tekst.</li>
</ul>
```

Een \<ol\> is een ordered list die weer bestaat uit \<li\>-elementen:
1. Een ordered list is genummerd 
2. of oplopend geletterd.

```html
<ol>
    <li>Dit is een ordered list</li>
    <li>Dat zie je aan de nummertjes</li>
    <li>voor de tekst.</li>
</ol>
```


\<nav\> en \<main\> zijn elementen die redelijk nieuw zijn (sinds HTML5). 
Ze hebben dezelfde functie als een \<div\>-element, maar de naam geeft ook aan waar ze voor zijn.
\<nav\> staat voor navigatie en \<main\> staat voor het hoofdgedeelte waarin de content wordt weergegeven.

Met de \<a\>-tag kun je links maken. Een link verwijst naar een andere webpagina.
Bij een link tag moet je ook weten naar welke website je wilt verwijzen. Dit kun je doen met een attribuut.

```html
<a href="https://www.apple.com">Deze link gaat naar de apple website</a>
```

In dit geval is \<a\> de tag voor een link en "href" is het attribuut waarmee aangegeven wordt welke webpagina wordt geladen.

Bij afbeeldingen werkt het vergelijkbaar. Een afbeelding wordt geladen met de \<img\>-tag. De plek waar de afbeelding zich bevindt wordt aangegeven met het src-attribuut.


```html
<img src="https://images.app.goo.gl/cqRE85p2eDBYThi49">

```

![App zonder copyright](/_assets/html/aap.jpg "Aap zonder copyright")

Een link of afbeelding waarvan het src-attribuut start met <code>https://</code> is een absolute link. De afbeelding of pagina staat op een vaste plaats op internet.  
  
Er zijn ook relatieve links. Die beginnen niet met <code>https://</code>. Bijvoorbeeld
```html
<img src="plaatjes/aap.jpg">
```
De verwijzing is relatief omdat het plaatje <code>aap.jpg</code> ten opzichte van de html-pagina vanwaar het wordt opgevraagd wordt aangeduid met <code>plaatjes/aap.jp</code>. Dit betekent dat het plaatje 'aap.jpg' in de map plaatjes is te vinden. De map plaatjes staat in dezelfde map als het html-bestand.
```shell

website
 |-- plaatjes
     |-- plaatje.jpg
 |-- index.html

```

{% video "1FhiIHTJWio" %}
