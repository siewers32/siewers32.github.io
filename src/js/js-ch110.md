---
title: The Persistent Dashboard
date: 2026-02-10
---
# {{ course-title }}

## {{ title }}

## Context
Stel je voor: je hebt een dashboard gebouwd, maar elke keer als de gebruiker de pagina ververst, springt het thema terug naar wit en is de gebruikersnaam verdwenen. Dat is irritant. Jij gaat dit oplossen met `localStorage`.

## De Leerdoelen

1. Gegevens opslaan met `localStorage.setItem()`.
2. Gegevens ophalen met `localStorage.getItem()`.
3. Begrijpen hoe je complexe data (zoals een object) opslaat met `JSON.stringify()` en `JSON.parse()`.

#### Stap 1: De Basis HTML

Maak een eenvoudige pagina met: (zie een zip met opdrachtbestanden onderaan de pagina!)

* Een inputveld voor een **gebruikersnaam**.
* Een dropdown (select) om een **thema** te kiezen (bijv. Licht, Donker, Blauw).
* Een "Opslaan" knop.
* Een "Reset" knop.
* Een `<h1>` waarin staat: "Welkom, [Naam]".

#### Stap 2: Event Listeners

Schrijf JavaScript die luistert naar de klik op de "Opslaan" knop. Wanneer er geklikt wordt, moet de waarde van de naam en het gekozen thema in `localStorage` worden gezet.

#### Stap 3: De 'Init' Functie (Cruciaal!)

Schrijf een functie die wordt uitgevoerd zodra de pagina laadt (`window.onload`). Deze functie moet:

1. Kijken of er een naam in `localStorage` staat. Zo ja: vul de `<h1>` met die naam.
2. Kijken of er een thema is opgeslagen. Zo ja: pas de CSS van de pagina direct aan (bijv. verander de `backgroundColor`).

#### Stap 4: Het Object (Bonus)

In plaats van twee losse regels in `localStorage`, probeer je nu de instellingen als één **object** op te slaan:

```javascript
const settings = {
    username: "Jan",
    theme: "dark"
};

```

*Tip: Gebruik `JSON.stringify(settings)` om het op te slaan en `JSON.parse()` om het weer bruikbaar te maken in JS.*

## Hoe check je of het werkt?

1. Open de browser en vul je naam in. Kies een thema en klik op Opslaan.
2. **Ververs de pagina.** Als je naam blijft staan en de kleur niet verspringt, heb je het goed gedaan!
3. Open de **Developer Tools** (F12) -> Tabblad **Application** -> **Local Storage**. Hier kun je jouw data "live" zien staan.

## Uitleg

### 1. De Basiscommando's

LocalStorage werkt altijd met een **Key** (de naam van het kluisje) en een **Value** (wat je erin stopt).

| Actie | Code |
| --- | --- |
| **Opslaan** | `localStorage.setItem('sleutel', 'waarde');` |
| **Ophalen** | `const data = localStorage.getItem('sleutel');` |
| **Verwijderen** | `localStorage.removeItem('sleutel');` |
| **Alles wissen** | `localStorage.clear();` |

### 2. Werken met Objecten (JSON)

LocalStorage kan alleen **strings** (tekst) opslaan. Wil je een heel object met instellingen opslaan? Dan moet je het omzetten.

* **Van Object naar String (om op te slaan):**
```javascript
const instellingen = { naam: "Jan", thema: "dark" };
localStorage.setItem('user_settings', JSON.stringify(instellingen));

```

* **Van String naar Object (om te gebruiken):**
```javascript
const data = localStorage.getItem('user_settings');
const object = JSON.parse(data);
console.log(object.naam); // Output: Jan

```


### 3. Het uiterlijk aanpassen (Thema's)

Om de kleuren van de pagina aan te passen, kun je CSS-classes aan- of uitzetten op de `body`.

```javascript
// Verwijder eerst alle thema-opties
document.body.classList.remove('light', 'dark', 'ocean');

// Voeg het gekozen thema toe
document.body.classList.add('dark');

```

---

### De F12-check

Je kunt precies zien wat je doet zonder dat je de code hoeft te vertrouwen:

1. Druk op **F12** in de browser.
2. Ga naar het tabblad **Application** (soms achter een `>>` pijltje).
3. Klik links op **Local Storage**.
4. Zie je jouw 'sleutels' en 'waarden' verschijnen terwijl je op Opslaan klikt? Dan zit je goed!

## Opdrachtbestanden
* [localstorage.zip start](/_assets/js/localstorage.zip)