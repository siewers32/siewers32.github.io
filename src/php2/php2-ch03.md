---
title: CRUD applicatie
date: 2022-04-03
---

# {{ course-title }}

## {{ title }}

## Connectie maken
```php
<?php
  // zie https://phpdelusions.net/pdo

  $host = '127.0.0.1';
  $db   = 'test';
  $user = 'root';
  $pass = '';
  $charset = 'utf8mb4';

  $dsn = "mysql:host=$host;dbname=$db;charset=$charset";
  $options = [
      PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
      PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
      PDO::ATTR_EMULATE_PREPARES   => false,
  ];
  $pdo = new PDO($dsn, $user, $pass, $options);

```
* De host is altijd je eigen machine/laptop dus: localhost of 127.0.0.1
* De database is de database die je wilt gaan gebruiken (voor iedere database kun je eigen rechten en permissies instellen)
* In Xampp kun je inloggen met de gebruiker 'root' zonder wachtwoord
* Charset zorgt ervoor dat ook de é en de ä en andere vreemde karakters goed worden weergegeven. 
* De options kun je zo laten staan.
* in de laatste regel wordt een nieuw PDO object aangemaakt met de juiste gegevens.

## Een database aanmaken
In de terminal of in phpMyAdmin kun je een nieuwe database aanmaken met `create database <databasenaam>`

## Gegevens importeren in phpMyAdmin
In phpMyAdmin kun je bij de tab SQL data van een sql-bestand importeren. Open het sql-bestand in een code-editor en kopieer alle tekst met ctrl-a. Plak alle tekst met ctrl-v in het sql-venster in phpMyAdmin.
Of
In de terminal doe je `source c:\pad\naar\mijndata.sql`
## Gegevens weergeven in HTML
## Een record toevoegen
## Een record aanpassen
## Een record verwijderen



### XAMPP
Xampp wordt geleverd met Apache, PHP en MySQL. Daarnaast wordt er met Xampp een php-applicatie meegeleverd met de naam 'phpMyAdmin'. 'phpMyAdmin' is gemaakt met php en het is bedoeld om een databaseserver mee te beheren. Je kunt phpMyAdmin openen vanuit het Xampp control-panel of je gaat direct naar http://localhost/phpmyadmin/.  
In phpMyAdmin kun je databases aanmaken en configureren.

### Testen
Als je een php-pagina maakt met bovenstaande code, dan kan het zijn dat e.e.a. nog niet meteen werkt.
* Je ziet niks!
  * Dat is juist prima. De code genereert geen output en er treden kennelijk geen errors op!
  * Blijkbaar kun je vanaf hier geweldige applicaties gaan bouwen!
* Je ziet een foutmelding
  * Lees goed wat er staat bij de foutmelding!
  * Controleer in het Xampp control-panel:
    * Komt het portnummer in de code overeen met het portnummer van MySQL.
  * Controleer in 'phpMyAdmin':
    * Bestaat er een database met een naam van die overeenkomst met de databasenaam in je code.
    * Kijk bij 'user accounts' of de gebruiker met de naam en wachtwoord in je code overeenkomt met 1 van de user accounts.

## Opdrachten

> #### Opdracht 1.1
> Download het bestand [school.sql](/_assets/php2/school.sql)  
> Installeer de database school:  
> Open phpMyAdmin en klik op de tab "SQL". Plak de inhoud van het bestand school.sql in het venster en klik op 'Go'. 
> Verifieer of er in de linker-kolom van phpMyAdmin een nieuwe database met de naam 'school' verschijnt.
> Pas de code voor de databaseconnectie aan zodat PHP een connectie maakt met de database 'school'.
> Voeg onderstaande code toe en test of je de gegevens van alle cursisten uit de database school te zien krijgt!

```php

// Bouw een query
$query = $connection->prepare("SELECT *  FROM cursist");

// Voer de query uit
$query->execute();

// Haal alle records op en maak van de gegevens een associatieve array
$result = $query->fetchAll(PDO::FETCH_ASSOC);

// Geef alle elementen uit de array $result weer.
print_r($result);

```

> #### Opdracht 1.2
> Maak met behulp van phpmyadmin een extra password veld in de tabel cursist.
> Verzin passwords voor de verschillende cursisten en voeg ze toe aan de tabel.
> Maak een login-systeem waarbij er wordt gecontroleerd op de naam en het password van de cursisten


