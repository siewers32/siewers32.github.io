---
title: Movie-app
date: 2023-08-25
author: jsiewers
---

# {{ course-title }}

## {{ title }}
De movie-app is een eenvoudige applicatie waarmee je een top-10 van movies kunt samenstellen op basis van ratings van gebruikers. Dit betekent dat een gebruiker meerdere movies een rating kan geven en een movie kan van meerdere gebruikers een rating ontvangen. M.a.w. een meer-op-meer relatie die je kan opdelen in 2 1-op-meer relaties doormiddel van een tussentabel (rating).
De movie-app wordt opgedeeld in een front-end en een back-end gedeelte. Laravel wordt gebruikt voor de back-end (API). VueJS wordt gebruikt voor het front-end gedeelte. Uitgangspunt van de applicatie is dat straks ook andere front-end webapps maar ook mobiele applicaties gebruik kunnen maken van de Movie-app's API.

## Normalisatie

### Wat is een normalisatie
In een genormaliseerde database zijn gegevens zo gerangschikt:
* Alleen elementaire gegevens worden opgeslagen
    * Atomair (dus voornaam, achternaam i.p.v. alleen naam.)
    * Geen berekende gegevens
    * Geen vaste gegevens
* Gegevens worden zo veel mogelijk op 1 plek of in 1 tabel opgeslagen
    * Voorkom redundantie
    * Voorkom inconsistentie

### Normaliseren
* Bepaal welke gegevens je wilt opslaan in de database.
* Probeer onderscheid te maken tussen tabellen, velden en records.
* Probeer te bepalen welke relaties er zijn tussen de tabellen:
    * Meer-op-meer relaties
    * Een-op-meer relaties
* Bepaal welke sleutels nodig zijn om gegevens te identificeren

#### Stap 1: 
Welke gegevens zijn er in de applicatie:
movietitel, moviejaar, rating, email gebruiker, voornaam, tussenvoegsel, achternaam

#### Stap 2: 
Welke gegevens zijn van elkaar afhankelijk  
* movies: movietitel, moviejaar
* ratings: rating (hoort bij een movie en bij een gebruiker!)
* users: email, voornaam, tussenvoegsel, achternaam

#### Stap 3:
Sleutels en relaties  
table: **movies**  
<u>id</u>, title, year

table: **ratings**  
<u style="text-decoration-style: double;">movie-id</u>, <u style="text-decoration-style: double;">user-id</u>, rating

table: **users**  
<u >id</u>, email, fname, prefix, lname, password

## Entiteit Relatie Diagram (ERD)

![Movie app ERD](/_assets/laravel/movie-app-erd.png)




