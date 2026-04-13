---
title: Python classes
date: 2025-06-03
---

# {{ course-title }}

## Bouwstenen voor je Programma's

Stel je voor dat je een game aan het maken bent. In die game heb je allerlei objecten: spelers, vijanden, wapens, items, enzovoort. Elk van deze objecten heeft bepaalde eigenschappen (bijvoorbeeld: een speler heeft een naam, levenspunten, een score) en kan bepaalde acties uitvoeren (bijvoorbeeld: een speler kan bewegen, aanvallen, items oppakken).

Als je dit allemaal zonder classes zou doen, wordt je code al snel een grote warboel. Je zou dan misschien losse variabelen hebben zoals `speler1_naam`, `speler1_levens`, `speler2_naam`, `speler2_levens`, enzovoort. Dit is niet alleen onoverzichtelijk, maar ook lastig te onderhouden.

Hier komen **classes** om de hoek kijken! Een class is als een blauwdruk of een sjabloon voor het maken van objecten. Het definieert de eigenschappen (data) en de acties (functies) die objecten van dat type zullen hebben.

### Waarom classes gebruiken?

1.  **Organisatie**: Je groepeert gerelateerde data en functionaliteit bij elkaar. Dit maakt je code veel overzichtelijker en makkelijker te begrijpen.
2.  **Herbruikbaarheid**: Als je eenmaal een class hebt gedefinieerd, kun je er zoveel objecten (ook wel 'instances' genoemd) van maken als je wilt. Je hoeft niet steeds dezelfde code te herhalen.
3.  **Modulariteit**: Je kunt complexe programma's opdelen in kleinere, behapbare stukjes. Elke class is verantwoordelijk voor een specifiek deel van de functionaliteit.

### Hoe ziet een class eruit?

Laten we eens kijken naar een simpel voorbeeld van een `Speler` class:

```python
# 1. Class definitie
class Speler:
    # 2. De '__init__' methode (constructor)
    # Deze methode wordt automatisch aangeroepen wanneer je een nieuw Speler-object maakt.
    # 'self' verwijst naar het object zelf.
    def __init__(self, naam, levenspunten):
        self.naam = naam  # Eigenschap: naam van de speler
        self.levenspunten = levenspunten # Eigenschap: levenspunten van de speler
        self.score = 0  # Elke speler begint met een score van 0

    # 3. Methoden (functies binnen de class)
    def beweeg(self, richting):
        print(f"{self.naam} beweegt naar {richting}.")

    def neem_schade(self, schade):
        self.levenspunten -= schade
        print(f"{self.naam} heeft {schade} schade geleden. Nog {self.levenspunten} levenspunten over.")
        if self.levenspunten <= 0:
            print(f"{self.naam} is verslagen!")

    def verhoog_score(self, punten):
        self.score += punten
        print(f"{self.naam} heeft {punten} punten verdiend. Nieuwe score: {self.score}.")

# 4. Objecten (instances) maken van de class
print("--- Spelers aanmaken ---")
speler1 = Speler("HeroBoy", 100) # We maken een Speler-object genaamd speler1
speler2 = Speler("DarkKnight", 120) # We maken een ander Speler-object genaamd speler2

# 5. Eigenschappen van objecten benaderen
print(f"Speler 1 naam: {speler1.naam}, Levenspunten: {speler1.levenspunten}")
print(f"Speler 2 naam: {speler2.naam}, Levenspunten: {speler2.levenspunten}")

# 6. Methoden van objecten aanroepen
print("\n--- Spelers in actie ---")
speler1.beweeg("noorden")
speler2.beweeg("oosten")

speler1.neem_schade(20)
speler2.verhoog_score(50)
speler1.verhoog_score(10)

speler1.neem_schade(90) # Speler 1 wordt verslagen

print(f"\nUiteindelijke score {speler2.naam}: {speler2.score}")
```

### Uitleg van de code:

1.  **`class Speler:`**: Dit is de definitie van onze class. We geven het de naam `Speler`. Classnamen beginnen traditioneel met een hoofdletter.
2.  **`def __init__(self, naam, levenspunten):`**: Dit is een speciale methode die de **constructor** wordt genoemd.
    * Het wordt **automatisch aangeroepen** wanneer je een nieuw object van deze class maakt (bijvoorbeeld `Speler("HeroBoy", 100)`).
    * **`self`**: Dit is een verplichte eerste parameter in elke methode van een class. Het verwijst naar het *object zelf* dat wordt gemaakt. Hiermee kun je eigenschappen aan dat specifieke object toewijzen (bijvoorbeeld `self.naam = naam`).
    * **`naam` en `levenspunten`**: Dit zijn parameters die je meegeeft wanneer je een nieuw `Speler`-object maakt. Deze worden gebruikt om de initiële eigenschappen van het object in te stellen.
    * `self.naam = naam`, `self.levenspunten = levenspunten`, `self.score = 0`: Hier worden de eigenschappen (`naam`, `levenspunten`, `score`) aan het object toegewezen. Elk `Speler`-object zal zijn eigen unieke waarden voor deze eigenschappen hebben.
3.  **`def beweeg(self, richting):`**, **`def neem_schade(self, schade):`**, **`def verhoog_score(self, punten):`**: Dit zijn gewone methoden (functies) die deel uitmaken van de `Speler`-class. Ze definiëren de acties die een `Speler`-object kan uitvoeren. Ook hier is `self` de eerste parameter om toegang te krijgen tot de eigenschappen van het object (`self.naam`, `self.levenspunten`, etc.).
4.  **`speler1 = Speler("HeroBoy", 100)`**: Dit is hoe je een **object** (of **instance**) van de `Speler`-class maakt. Je 'roept' de class aan als een functie, en de `__init__` methode wordt uitgevoerd om het object te initialiseren. `speler1` is nu een uniek `Speler`-object.
5.  **`speler1.naam`**, **`speler2.levenspunten`**: Je kunt toegang krijgen tot de eigenschappen van een object met behulp van de 'punt'-notatie (`objectnaam.eigenschap`).
6.  **`speler1.beweeg("noorden")`**, **`speler2.neem_schade(30)`**: Je roept de methoden van een object aan met behulp van de 'punt'-notatie (`objectnaam.methode()`).

### Conclusie

Classes zijn een fundamenteel concept in objectgeoriënteerd programmeren (OOP), een programmeerparadigma dat heel veel wordt gebruikt in de softwareontwikkeling. Door classes te gebruiken, schrijf je code die:
* Beter georganiseerd is
* Makkelijker te begrijpen en te onderhouden is
* Eenvoudiger uit te breiden is


