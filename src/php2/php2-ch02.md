---
title: PHP en MySQL
date: 2022-04-03
---

# {{ course-title }}

## {{ title }}

## Twee handen op 1 buik
PHP en MySQL zijn uitstekend op elkaar afgestemd. MySQL is een open source database-server waar PHP al vanaf begin af aan mee kan communiceren. Dit betekent dat je vanuit PHP commando's kunt sturen (sql) naar MySQL. MySQL kan op zijn beurt de commando's uitvoeren en eventueel data uit een database teruggeven aan PHP.
Door de samenwerking van MySQL en PHP is het mogelijk om dynamische websites te bouwen die kunnen opschalen naar een groot publiek.
Voorbeelden van applicaties zijn:
* Facebook
* Wikipedia
* Tumblr
* Slack
* MailChimp
* Wordpress
* Flickr

## Een connectie maken tussen PHP en MySQL
Er zijn verschillende manieren (functies) om PHP te koppelen aan MySQL. De meest populaire op dit moment is het gebruik van PDO.
Met PDO kun je een veilige verbinding maken met een MySQL server. Met PDO kan je ook communiceren met andere database-servers zoals:
* Microsoft SQL Server
* Postgress
* Oracle

## Deze gegevens zijn nodig voor een databaseconnectie
Zonder naam en wachtwoord heb je geen toegang tot de server en de databases die door de server worden beheerd.
Om een databaseconnectie op te zetten heb je de volgende informatie nodig:
* Het IP-adres of de naam van de machine waarop de database-server draait.
* Het poortnummer waarop de server luistert naar commando's
* De database waar de gebruiker toegang toe heeft.
* De naam van de gebruiker
* Het wachtwoord van de gebruiker.

In PHP ziet dit er als volgt uit:
```php
<?php
    // De server draait op je eigen laptop en de naam van de database is 'test'
    // De gebruiker root heeft toegang. Hij heeft geen wachtwoord (standaardinstelling in XAMPP)
    $connection = new PDO('mysql:host=localhost;port=3306;dbname=test', 'root', '');

```
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


