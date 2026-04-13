---
title: Hosting
date: 2022-04-11
---

# {{ course-title }}

## {{ title }}

#### Ontwikkelomgeving opzetten
* Ontwikkelomgeving
  * XAMPP installeren
  * Environment variables instellen
    * Ervoor zorgen dat je PHP vanuit iedere directory kunt starten
    * Google op 'add php to path windows 10' 
  * IDE installeren (Visual Studio Code / PHP Storm)
  * Git installeren (Google op 'git installeren op windows')
  * Maak een Github account

## DevOps Engineer
#### IT Systems & Devices

**Testserver opzetten met je team**
* Shared hosting op internet
  * Bijv. Strato, Antagonist, Flexwebhosting etc.
* VPS
  * Eigen server, die je zelf moet inrichten
  * LAMP of IIS met PHP
* Cloud Platform
  * AWS, GCP, Heroku of Openshift
  * Kubernetes
  * Docker
* Testserver op school (alleen via netwerk op school te bereiken)
  * Zelf XAMPP installeren
  * Gebruik maken van het hosts-bestand om op basis van een domeinnaam je server te kunnen gebruiken.
  * FTP server installeren
  * Git installeren en je bestanden toevoegen aan een repository

**Workflow 1**
* Applicatie met FTP overzetten op een testserver
(Zelf een FTP server bouwen met XAMPP)
* Leg uit hoe anderen connectie kunnen maken met jouw web- en ftp-server.
* Na testen, de website opnieuw aanpassen en testen op testserver
* Website publiceren op internet.

![FTP Workflow](/_assets/git/ftp-filetransfer.svg)


**Workflow 2**
* Voor je applicatie versiebeheer instellen met Git
* Een account op Github maken en daarmee de applicatie synchroniseren
* De applicatie testen op een testserver door de bestanden met git 'uit te checken' op de server.

![In en uit-checken vanaf Github.com](/_assets/git/github.svg)

**Workflow 3**
* Voor je applicatie versiebeheer instellen met Git
* Een bare-git repository maken op de server
* Jouw git repository synchroniseren met de git-repo op de server
* Automatisch bestanden uitschecken op de server op het moment dat er een nieuwe versie wordt gesynchroniseerd met de repo op de server.

![Github Post-receive hook](/_assets/git/github-post-receive.svg)


> ### Opdracht 11.1
> Zorg ervoor dat je als developer overal op je systeem een php-webserver kunt opstarten. Als je het pad naar een applicatie (bijv. c:\xampp\php) opneemt in de 'PATH-environment variable' dan kun je die applicatie vanaf iedere locatie op je harde schijf opstarten.     
> PS: environment variable = omgevingsvariabele in het nederlands.  
> [De PATH-omgevingsvariabele instellen](https://dinocajic.medium.com/add-xampp-php-to-environment-variables-in-windows-10-af20a765b0ce#:~:text=Start%20by%20typing%20in%20Environment,Path%20variable%20and%20click%20Edit.)

> ### Opdracht 11.2
> Laat zien hoe je workflow 1 hebt geïnstalleerd. Andere developers kunnen gebruik maken van jouw test-oplossing.
> Leg uit en demonstreer wat developers moeten doen om hun website op jouw hosting-oplossing te kunnen publiceren.
> Denk aan: hosts (lokaal DNS), FTP accounts etc. Je website moet een domeinnaam krijgen.  
> [Lokaal DNS gebruiken met het hosts bestand](https://nl.joecomp.com/how-edit-write-protect)  
> [Een FTP-server opzetten met XAMPP](https://www.youtube.com/watch?v=eJuJrMyuiXw)

> ### Opdracht 11.3
> Maak een Git repository aan. (Dit geldt voor iedereen)
> Zorg ervoor dat al je bestanden worden opgenomen in de repository.
> Maak een link aan met een remote repsository op github.
> Synchroniseer je lokale repository met de repository op github.
> [Uitleg over het gebruik van Git en Github](https://youtube.com/playlist?list=PL_dDpKbU0KLZpqoYU6u0w6AdVTqwfUw4M)
 
## Creative- en software development
#### Software developer

[Zie javascript opdracht....](https://www.edutorial.nl/course/js/ch3)