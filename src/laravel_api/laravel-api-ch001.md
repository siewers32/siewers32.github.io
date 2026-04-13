---
title: Introductie
date: 2023-07-25
author: jsiewers
---

# {{ course-title }}

## {{ title }}
In deze cursus wordt uitgelegd hoe je een laravel backendapplicatie maakt met een Vue frontend. 
Een aantal technieken komen in deze cursus bij elkaar. 

> #### Voorkennis
> * Je kunt werken met SQL-queries
> * Je kunt een ERD maken en een database normaliseren
> * Je kunt een eenvoudige frontend applicatie maken met Vue.js
> * Je kunt een eenvoudige Laravel applicatie bouwen
> * Je hebt kennis van scrum en je weet hoe je userstories moet maken.

Het onderwerp in de cursus is een movie-app. 

## User stories
* Bezoekers kunnen zoeken op de titel van movies
* Bezoekers kunnen een top-10 van movies bekijken met de hoogste gemiddelde rating
* Bezoekers kunnen registreren
* Gebruikers kunnen movies een rating geven


Technisch gezien betekent dit dat een gebruiker meerdere movies een rating kan geven en een movie kan van meerdere gebruikers een rating ontvangen. M.a.w. een meer-op-meer relatie die je kan opdelen in 2 1-op-meer relaties doormiddel van een tussentabel (rating).
De movie-app wordt opgedeeld in een front-end en een back-end gedeelte. Laravel wordt gebruikt voor de back-end (API). VueJS wordt gebruikt voor het front-end gedeelte. Uitgangspunt van de applicatie is dat straks ook andere front-end webapps maar ook mobiele applicaties gebruik kunnen maken van de Movie-app's API.

## Normalisatie
* Bepaal welke gegevens je wilt opslaan in de database.
* Maak onderscheid tussen tabellen, velden en records.
* Bepaal welke relaties er zijn tussen de tabellen:
    * Meer-op-meer relaties
    * Een-op-meer relaties
* Bepaal welke sleutels nodig zijn om gegevens te identificeren

#### Stap 1 
Welke gegevens zijn er in de applicatie:
movietitel, moviejaar, rating, email gebruiker, voornaam, tussenvoegsel, achternaam

#### Stap 2 
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




