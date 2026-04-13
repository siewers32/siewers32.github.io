---
title: Serial downloader
date: 2022-10-22
---

# {{ course-title }}

## {{ title }}

## Aanleiding
Op school wordt er vaak gewerkt met licenties van leveranciers. Studenten krijgen een serienummer of sleutel waarmee ze software kunnen activeren.
Het uitdelen van deze sleutels is vaak een lastige en tijdrovende klus.
* Studenten kunnen maar 1 sleutel ontvangen en gebruiken
* Er moet worden bijghouden wie welke sleutel heeft gekregen, want het komt nogal eens voor dat studenten hun nummer of sleutel niet meer kunnen vinden.
* Het digitaal versturen (per mail) is tijdrovend en foutgevoelig.
* De administratie is tijdrovend en foutgevoelig.

## Resultaat
Er is behoefte aan een applicatie die het uitdelen van serienummers en sleutels vergemakkelijkt. Medewerkers kunnen in de applicatie makkelijk opzoeken welke student al een serienummer heeft ontvangen.  
 
## Backlog
* Als gebruiker wil ik een serial nummer op kunnen vragen zodat ik de software die ik heb geïnstalleerd kan activeren.
* Als gebruiker wil ik instructies kunnen volgen zodat ik de procedure om software te activeren kan volgen.
* Als medewerker wil ik op basis van een excel-sheet studentgegevens en serienummers kunnen toevoegen aan de applicatie.

## Eisen
* De software moet veilig zijn
* Er wordt zorgvuldig omgegaan met gegevens van gebruikers, alleen de gegevens die nodig zijn voor de beveiliging van de applicatie worden in het systeem opgeslagen.
    * Een gebruiker geeft een id-nummer, zijn/haar geboortedatum en een huisnummer
    * Gegevens in de database zijn encrypted, zodat gegevens niet teruggeleid kunnen worden naar een specifieke persoon
    * De installatieprocedure en serial-gegevens worden naar het email-adres van de gebruiker gestuurd.

## Activity diagram
![Activity diagram serial number app](/_assets/projecten/activity_serial_number_app.svg)

## Software
Het systeem wordt gebouwd op basis van een REST API. 
* Frontend
    * HTML/CSS en (vanilla) javascript om met de api te communiceren
* Backend
    * De API zelf wordt gebouwd in PHP
    * Er wordt gebruik gemaakt van het Laravel framework

