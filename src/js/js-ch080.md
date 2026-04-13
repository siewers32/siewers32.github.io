---
title: Javascript listeners
date: 2022-04-20
---

# {{ course-title }}

## {{ title }}

### Leerdoelen
* Je weet wat een ‘listener’ is
* Je kunt een listener koppelen aan een DOM-element
* Je kunt vanuit een listener een functie aanroepen

### Listeners
Je hebt inmiddels gezien dat je met een aanroep zoals `onclick` of `onblur` een functie kunt activeren op basis van een gebeurtenis (= event)  
Een andere manier om ongeveer hetzelfde te bereiken is het koppelen van een `event-listener` aan een html-element. Het html-element 'luistert' dan naar 'events'. Als een bepaald event zich voordoet, kun je een stukje javascript code uit laten voeren.
Bijvoorbeeld:

```javascript
document.getElementById("output").addEventListener("click", displayDate); 

function displayDate() {
    alert(new Date());
}
```
Als je op het element met het attribuut `id=output` klikt, dan wordt de datum weergegeven in een alert-box.