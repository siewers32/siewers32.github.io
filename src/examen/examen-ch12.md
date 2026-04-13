---
title: Examen 25187
date: 2022-04-02
---

# {{ course-title }}

## {{ title }} Applicatie- / Mediaontwikkelaar


## Vooraf aan het examen
Je krijgt een zgn. kandidaatset. Hierin staat beschreven in welke vorm het examen wordt uitgevoerd, wat je rol is en hoe je wordt beoordeeld. 
Je krijgt ook al een tipje van de sluier over het onderwerp. Gebruik deze info om je voor te bereiden. Ga alvast op zoek naar vergelijkbare apps/bedrijven etc.

***S-BB***
* [Kwalificatiedossier crebo 25187](https://kwalificatie-mijn.s-bb.nl/kwalificatie/applicatie-en-mediaontwikkelaar/cmVzdWx0YWF0VHlwZT01O2Rvc3NpZXJJZD0yODgzO2t3YWxpZmljYXRpZUlkPTEwMDgyMTI=)

## Kerntaak 1
### Levert een bijdrage aan het ontwikkeltraject

### Start van het examen
Als totale groep examenkandidaten worden jullie gebriefd. 
Tijdens de briefing kun je vragen stellen (bereid die vragen voor!).

### Situatie
Kerntaak 1 voer je alleen uit!
Je maakt gebruik van je laptop <u>zonder</u> internet-toegang.

**Werkprocessen**
* Stelt de opdracht vast
* Levert een bijdrage aan het projectplan
* Levert een bijdrage aan het ontwerp
* Bereidt de realisatie voor


**Stelt de opdracht vast**
* Briefing
* Programma van Eisen / Productvision
  * Oorspronkelijke situatie
  * Probleemstelling (doel wat je wilt bereiken)
  * Gewenste situatie (wat is het resultaat)
  * Doelgroep (wie zijn de gebruikers van de applicatie)
  * Vormgeving
  * Informatie (welke informatie wordt weergegeven)


**Levert een bijdrage aan het projectplan**
* Plan van aanpak
  * Inleiding (Verwijs naar het resultaat in het PvE)
  * Doelstellingen (Zie probleemstelling PvE)
  * Betrokkenen (Wie zit er in je projectgroep en wie is er betrokken vanuit de opdrachtgever)
  * Takenlijst (Welke scrumonderdelen worden gedaan, hoeveel sprints en hoelang duren die)
  * Planning (Zet de scrumonderdelen in een planning, je hebt 60 uur de tijd voor de realisatie)
    * Wat, wanneer en wie zijn er bij betrokken.
  * Risico’s 
  * Projectgrenzen (Wat gaan jullie vooral **niet** doen)

**Levert een bijdrage aan het ontwerp**
* Functioneel ontwerp
  * Backlog, voorzien van alle user stories
  * Wireframes
  * Activiteitendiagrammen (UML)
* Technisch ontwerp
  * ERD

**Ontwikkelomgeving**
* Beschrijf welke hard- en software je gebruikt om je werkzaamheden uit te kunnen voeren.


## Kerntaak 2
***Realiseert en test onderdelen van een product***

#### Werkprocessen
* Realiseert (onderdelen van) een product
* Test onderdelen van een product

#### Activiteiten
* Werken met een scrumtool (Azure DevOps, Github projects, Trello etc.)
* Scrum cyclus
  * Sprint planning
    * Maken sprint backlog
    * Daily scrums
    * Testen
  * Sprint review
  * Sprint retrospective
  
Uitleg verschillende onderdelen scrum:
* Opstellen product backlog
  * User stories (uit ontwerp) vertalen naar taken.
* Sprint planning
  * Samen met product-owner bepalen welke doelen behaald kunnen worden
  * Op basis van product backlog, items toevoegen aan het sprint backlog
  * Inschatten wat gedaan kan worden en door wie (scrum poker)
* Daily scrums
  * Wat heb ik gisteren gedaan
  * Wat ga ik vandaag doen
  * Welke obstakels ga ik tegenkomen?
* Testen
  * Testplan maken per sprint
  * Test uitvoeren en een testlog bijhouden.
* Sprint review
  * [klassendiagram](https://francescolelli.info/generic/developing-uml-diagrams/)
* Sprint retrospective
  * Wat ging goed (product en proces)
  * Wat kan beter (product en proces)


#### Testplan
<div class="html">
<table>
<tr>
  <th>Onderdeel</th>
  <th>User Story</th>
</tr>
<tr>
  <td>Reservering</td>
  <td>Als gebruiker kan ik een reservering plaatsen</td>
</tr>
</table>
</div>

#### Testlog
<div class="html">
<table>
<tr>
  <td>Onderdeel</td>
  <td>Datum</td>
  <td>Tester</td>
  <td>Prioriteit</td>
  <td>Verbeteractie</td>
  <td>Datum</td>
  <td>Afgehandeld door</td>
</tr>


<tr>
  <td>Reservering</td>
  <td>12-12-2021</td>
  <td>Piet</td>
  <td>2</td>
  <td>Voorkomen dat je in het verleden kunt reserveren</td>
  <td>13-12-2021</td>
  <td>Willem</td>
</tr>
</table>
</div>

## Kerntaak 3


#### Acceptatietest
Tijdens de acceptatietest wordt de applicatie door de gebruiker (of opdrachtgever) getest.
De ontwikkelaar maakt een acceptatietest voor de gebruiker zodat die zelfstandig de applicatie kan testen.

### Opstellen acceptatietest
* Functionaliteit
  * Bijv. bestellen of registreren. Korte beschrijving van de functionaliteit
* Actie
  * Beschrijving van hetgeen de gebruiker moet doen om de functionaliteit te testen
  * Bijv. vul gegevens in op het registratieformulier en druk op 'verstuur'-knop.
* Scenario
  * De situatie en handelingen die gedaan moeten zijn voordat de functionaliteit getest kan worden.
  * Bijv. de gebruiker moet ingelogd zijn voordat het uitloggen getest kan worden.
* Verwachte resultaat
  * Bijv. de gebruiker ziet zijn naam boven in de menubalk na het inloggen.
* Werkelijk resultaat
  * Dit kun je pas invullen als er daadwerkelijk is getest!
  * Bijv. de gebruiker logt in met de juiste inloggegevens, maar hij ziet een wit scherm!
* Aanpassingen
  * Als het werkelijk resultaat afwijkt van het verwachte resultaat gaat er dus iets mis!
  * Geef aan wat er aangepast moet worden om toch het verwachte resultaat te krijgen.
  * Bijv. de functionaliteit van het inloggen moet gecontroleerd en aangepast worden.
* Geef aan wat de prioriteit is van het gesignaleerde probleem en voeg je naam toe, zodat men kan zien wie de acceptatietest heeft begeleid. 

## Uitvoeren acceptatietest
* Geef de gebruiker muis en toetsenbord en leg aan de hand van de acceptatietest uit welke handelingen hij uit moet voeren om de functionaliteit te testen.
* Noteer opmerkingen van de gebruiker die relevant zijn voor de applicatie. Het kan gaan om fouten en bugs, maar ook om wensen of interpretatieverschillen of gebruiksvriendelijkheid.
* Noteer ook opmerkingen die gaan over het proces en de totstandkoming van de applicatie. Deze opmerkingen kun je later gebruiken bij het schrijven van de evaluatie.
* Geef de aanpassingen een prioriteit (fouten en bugs moeten natuurlijk opgelost worden, maar wensen moeten wel in overeenstemming zijn met het functioneel ontwerp).

## Opleveren applicatie
* Demonstreren functionaliteit
* Technische uitleg met behulp van [klassendiagram](https://francescolelli.info/generic/developing-uml-diagrams/)

## Evaluatie
* Gebruik de STAR methodiek om de applicatie en de totstandkoming van de applicatie te evalueren
  * Beschrijf de Situatie
  * Wat was jouw Taak
  * Wat heb je gedaan (Actie)
  * Hoe kijk je daar op terug. Wat ging goed en wat had beter gekund (Reflectie)
