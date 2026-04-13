---
title: MVC
date: 2022-04-09
---

# {{ course-title }}

## {{ title }}


Als je op basis van object georiënteerd programmeren een applicatie bouwt dan is het overzichtelijk om de klassen op te slaan in afzonderlijke bestanden. 
Structuur aanbrengen in grote applicaties is een kunst op zich. In de loop van de tijd zijn er een aantal modellen ontstaan die goed blijken te werken in de praktijk. Het Model-View-Controller model is er 1 van. Veel php-frameworks zijn hierop gebaseerd. Denk aan Symphony, Laravel of Code Igniter.

## Model
Het model-onderdeel is verantwoordelijk voor het ophalen of opslaan van gegevens. Communiceren met een database of een filesysteem gaat op basis van classes die deze functionaliteit leveren.

## View
Een view-class zorgt er voor dat gegevens worden weergegeven. Binnen een view-class wordt er geen data meer gemanipuleerd, dat is al eerder gedaan in de model- en controller-classes.

## Controller
Een controller-class zorgt voor de verbinding tussen de model- en de view-classes. De controller manipuleert de data die wordt opgehaald of opgeslagen en levert de gegevens die moeten worden weergegeven aan een view-class.

## Frameworks

Frameworks hebben nog meer overeenkomsten.

### Routing
Normaliter geeft je webserver de pagina terug die je opvraagt met behulp van een url. Bijvoorbeeld de url https://www.example.com/test.php geeft de geïnterpreteerde inhoud van test.php terug aan de broser. Met behulp van de 'rewrite'-functie van webservers kun je zorgen voor een single point of entry'. Alle urls worden doorgestuurd naar 1 punt, te weten: <code>index.php</code>. In <code>index.php</code> wordt aan de hand van de url bekeken welke informatie wordt teruggestuurd naar de browser.  
Deze methode heeft 2 belangrijke voordelen:
* Je kunt als developer goed controleren welke informatie je naar de client terugstuurd en dat is een belangrijk stukje beveiliging!
* Je kunt als developer goed bepalen hoe urls worden gevormd. Hierdoor kun je de applicatie optimaliseren voor zoekmachines.


### Middleware
Voordat een applicatie de gevraagde pagina teruggeeft aan de browser kan er vooraf nog code uitgevoerd worden. Je wilt bijvoorbeeld controleren of de gebruiker wel is ingelogd en de juiste rechten heeft om de opgevraagde 
pagina weer te geven.  
Met middleware kan in het proces vooraf en achteraf code uitgevoerd worden. Dit is ideaal voor bijvoorbeeld:
* Authenticatie
* Checken of een gebruiker geen robot is
* Validatie van formulieren

### Namespaces
Frameworks lijken veel op elkaar. Ze bieden in de basis vrijwel dezelfde functionaliteit. Er is in het Laravel framework zelfs veel code terug te vinden die ook in het Symfony-framework wordt gebruikt. Ook onderdelen van Zend-framework zie je terug in andere frameworks. Om naam-conflicten van klassen te vermijden biedt php de mogelijkheid om 'namespaces' te gebruiken. Het idee is dat iedere 'vendor' (=leverancier) zijn klassen in een mapje zet met zijn eigen naam. Zo is de Laravel\Router.php klasse een andere dan de Symfony\Router.php klasse. Beide kunnen nu in dezelfde applicatie worden gebruikt.

### Autoloading

Onder autoloading wordt verstaan dat je klasses niet voortduren met <code>include('pad/naar/klasse)</code> hoeft te laden. Door het gebruik van een vaste structuur en afspraken (PSR-4) met namespaces en vendors is het mogelijk om klassen automatisch te laden. Hiervoor wordt <code>composer</code> gebruikt.

## Opdrachten
* Clone de applicatie op github: [https://github.com/siewers32/app](https://github.com/siewers32/app)
* Installeer de applicatie op je eigen computer
* Zorg ervoor dat je php overal van je systeem kunt opstarten (omgevingsvariabele path instellen!)
  * git clone
  * installeer [composer](https://getcomposer.org/)
  * composer install vanuit de <code>app</code>-directory
  * installeer de database
  * copy <code>sample.env</code> naar <code>.env</code> en pas configuratie aan naar jouw situatie
  * start vanuit public-directory met <code>php -S localhost:8666 index.php</code>
* Bestudeer de code:
  * index.php - single point of entry
  * Appfactory - klasse waarmee de applicatie wordt geïnstantieerd
  * App - is de applicatie
  * After.php en Before.php zijn de middleware-klassen
  * Request.php beheert alle informatie die wordt opgevraagd door de client
  * Response.php beheert alle informatie die uiteindelijk wordt weergegeven op de pagina.

## Project
* Maak op basis van de app op github zelf een applicatie.
* Je mag met maximaal 2 mensen samenwerken (groepjes van max. 3 personen)
* Je mag zelf een onderwerp verzinnen
* App vereisten:
  * Single point of entry
  * MVC-pattern gebruiken
  * Minimaal 1 database met 2 tabellen


{% video "videoseries?list=PLBtXOV0WuE_EGKbUL_QzRSfBtaYg78aSe" %}