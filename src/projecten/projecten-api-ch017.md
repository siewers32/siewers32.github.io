---
title: Klassediagram
date: 2025-03-06
---

# {{ course-title }}

## {{ title }}

#### 1. Duidelijke structuur van het systeem  
- Een klassediagram toont welke klassen er zijn, welke eigenschappen ze hebben en hoe ze met elkaar verbonden zijn.  
- Dit helpt ontwikkelaars om te begrijpen hoe data wordt beheerd en verwerkt.

#### 2. Ondersteunt Object-Georiënteerd Ontwerp (OOD)  
- Het laat encapsulatie, overerving en polymorfisme zien, wat essentieel is voor goed gestructureerde en herbruikbare code.
- Ontwikkelaars kunnen hiermee een duidelijk objectmodel opzetten voordat ze beginnen met coderen.

#### 3. Beter beheer van relaties en afhankelijkheden  
- Het diagram maakt onderscheid tussen:
  - Associatie (standaard relatie tussen objecten),
  - Aggregatie (een object bevat een ander, maar ze kunnen onafhankelijk bestaan),
  - Compositie (een object bevat een ander, en ze zijn afhankelijk van elkaar),
  - Generalizatie (overerving) (een subklasse erft eigenschappen en methoden van een superklasse).
- Dit voorkomt te sterke afhankelijkheden, wat onderhoud en uitbreidingen makkelijker maakt.

#### 4. Efficiënte communicatie tussen teams  
- Ontwikkelaars, architecten en testers kunnen het klassediagram gebruiken als gemeenschappelijke taal.
- Stakeholders kunnen snel zien hoe het systeem is opgebouwd zonder in de code te duiken.

#### 5. Ondersteunt database-ontwerp  
- Klassediagrammen helpen bij het ontwerpen van de relationele database door inzicht te geven in entiteiten en hun relaties.
- Kan direct worden vertaald naar databasestructuren (tabellen, sleutels en relaties).

#### 6. Makkelijk uitbreidbaar en onderhoudbaar  
- Door een duidelijke class-based architectuur is het eenvoudiger om later functionaliteiten toe te voegen of te wijzigen zonder het hele systeem te herschrijven.
- Vergemakkelijkt refactoring en modulariteit van code.

Een School heeft Docenten en Studenten.  
- Een Docent kan meerdere Studenten begeleiden (associatie).  
- Een Student heeft meerdere Vakken (aggregatie, want vakken bestaan ook zonder student).  
- Een Vak heeft een Lesmateriaal, dat er altijd bij hoort (compositie).  
- Docent en Student erven van de klasse Persoon (generalisatie).  

- Overerving (inheritance) → `Persoon` wordt geërfd door `Docent` en `Student`.
- Associatie → `Docent` begeleidt `Student`.
- Aggregatie → `Student` volgt `Vak` (vakken kunnen onafhankelijk bestaan).
- Compositie → `Vak` bevat `Lesmateriaal` (lesmateriaal hoort onlosmakelijk bij een vak).

<img src="/_assets/projecten/classdiagram.svg" alt="classdiagram voorbeeld" style="width:20%">

