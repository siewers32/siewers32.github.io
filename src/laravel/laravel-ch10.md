---
title: Monolithische applicaties
date: 2023-06-01
---

# {{ course-title }}

## {{ title }}

## Waar gaat deze cursus over?
Je kunt het Laravel framework op verschillende manieren inzetten om een webapplicatie te bouwen. In deze cursus volg je de aanpak voor een monolithische applicatie.

## Wat is een monolithische applicatie?
Monolithische applicaties, zijn applicaties waarbij alle componenten in één enkele eenheid zijn gebouwd, ze hebben hun eigen set voor- en nadelen. Dus zowel de front-end als de back-end maken onderdeel van een en dezelfde applicatie.

**Voordelen:**

* **Eenvoudige ontwikkeling, testen en implementatie:**  Omdat alles in één codebase zit, zijn de beginfases van ontwikkeling en implementatie vaak eenvoudiger met monolithische applicaties.
* **Horizontale schaalbaarheid:** Hoewel vaak gedacht wordt dat monolieten moeilijk te schalen zijn, kunnen ze horizontaal geschaald worden door meerdere kopieën achter een load balancer te draaien.
* **Minder cross-cutting concerns:**  Met één codebase zijn er minder zorgen over zaken als logging en prestatiemonitoring die meerdere componenten doorkruisen.
* **Verbeterde prestatie:** Componenten in een monoliet delen hetzelfde geheugen, wat de communicatie sneller maakt dan tussen services in een microservices architectuur.

**Nadelen:**

* **Stijve structuur en sterke componentkoppeling:** Monolieten zijn inherent minder flexibel door hun vaste, lineaire structuur. Dit maakt beheer, schaling en updates op lange termijn complex.
* **Gevoeligheid voor fouten:** Een fout in één module kan de hele applicatie onbruikbaar maken door de sterke afhankelijkheid tussen componenten.
* **Omslachtige updates:** Elke update vereist een herimplementatie van de volledige applicatie, wat tijdrovend kan zijn.
* **Technologische beperkingen:** Dezelfde technologische stack moet voor de hele applicatie gebruikt worden, waardoor latere aanpassingen kostbaar kunnen zijn.

**Conclusie:**

Hoewel monolithische applicaties voordelen hebben zoals eenvoud in de beginfase, maken de nadelen op het gebied van flexibiliteit, schaalbaarheid en onderhoud ze minder geschikt voor complexe applicaties of snelgroeiende omgevingen. 


## Wanneer een monolithische applicatie?

Hoewel microservices aan populariteit winnen, zijn er nog steeds situaties waarin een monolithische applicatie de juiste keuze is. De bronnen beschrijven verschillende scenario's waarin een monolithische architectuur de voorkeur heeft:

**Wanneer eenvoud en snelheid belangrijk zijn:**

* **Klein team:** Als u alleen of met een klein team werkt, is de complexiteit van microservices waarschijnlijk niet nodig. Een monolithische applicatie is eenvoudiger te bouwen, testen en implementeren, omdat alles in één codebase zit. 
* **Eenvoudige applicatie:** Voor kleine applicaties met beperkte eisen aan flexibiliteit en schaalbaarheid is een monolithische aanpak vaak voldoende.
* **Snelle lancering:**  Een monoliet helpt u om de oplossing snel te ontwikkelen en te lanceren, waardoor u uw idee sneller kunt valideren en de initiële kosten laag blijven.

**Wanneer microservices-expertise ontbreekt:**

* **Gebrek aan kennis:** Microservices vereisen veel kennis en ervaring. Zonder de nodige expertise in huis, zullen de voordelen van microservices niet worden gerealiseerd. 


