---
title: Models
date: 2023-07-30
---

# {{ course-title }}

## {{ title }}

Voor dit project is een laravel-backend en een vue3-frontend de basis. Aangezien er een verschil is tussen de functionaliteit voor bezoekers en gebruikers moet de mogelijkheid er zijn om je als bezoeker te kunnen registreren. Een geregistreerde bezoeker is een gebruiker. Gebruikers hebben meer bevoegdheden in de applicatie dan bezoekers.

Laravel wordt met verschillende start-pakketten geleverd. In deze cursus maak je gebruik van `Breeze`. Je kunt breeze op verschillende manieren installeren. In dit geval maak je gebruik van de optie om `Breeze` als backend van een `API` te installeren.

* Maak een database met een mysql-client
* Installeer een blanco laravel project
* Installeer breeze met de optie `api`
* Start de migration om de database tabellen aan te maken.

```shell
php artisan create-project laravel/laravel breeze_backend
php artisan breeze:install api
php artisan migrate
```

De start is aan de 'achterkant' van de applicatie. De data voor de applicatie wordt opgeslagen in de database. De 'models' van de applicatie zorgen voor de communicatie met de database en ze leveren de gevraagde gegevens aan de 'controllers'.
Je maakt een nieuw model om movie-gegevens in op te slaan met onderstaande code:

```php
php artisan make:model Movie -m

```
Met bovenstaand commando wordt een model-class aangemaakt en er wordt een migration-class aangemaakt. De migration zorgt voor het aanmaken van de tabel in de database.
Laravel maakt in de map app>Models een bestand aan met de naam van het model

```shell
movie-app 
 |-- app
      |-- Models
           |-- Movie.php
```

## Migrations
Laravel maakt in de map database->migrations een bestand aan met als naam de creatiedatum en de titel die je zelf hebt meegegeven.

```shell
movie-app 
 |-- database 
      |-- 2021_11_07_140728_create_movie_table.php

```
In de migration moet je aangeven welke velden je nodig hebt. Zoals je ziet is er al een veld 'id' voor de primaire sleutel. De methode timestamps creëert twee velden om de aanmaakdatum vast te leggen en eventueel een datum waarop records zijn aangepast.
```php
    public function up()
    {
        Schema::create('movies', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
        });
    }
```
De migration wordt aangevuld met de velden die nodig zijn om de informatie voor movies vast te leggen.
[Hier](https://laravel.com/docs/8.x/migrations#available-column-types) vind je alle mogelijke veld-typen die je kunt gebruiken
```php
    public function up()
    {
        Schema::create('movies', function (Blueprint $table) {
            $table->id();
            $table->string('title', 125);
            $table->smallinteger('year'); 
            $table->timestamps();
        });
    }
```
De migration zorgt ervoor dat de tabel in de database wordt aangemaakt, zodat het model via een pdo connectie data kan opvragen of manipuleren. Je start de migration vanaf de command-line: 
```php
php artisan migrate
// of
php artisan migrate:fresh 
// zodat 'oude' data eerst wordt verwijderd en de tabel opnieuw wordt aangemaakt

```
Inmiddels heb je in de map app->Models nu 2 models. 'User' en 'Movie'. User is bij de installatie al aangemaakt door Laravel. Bij het uitvoeren van de migration zijn nog een aantal andere tabellen aangemaakt, waaronder de users-tabel.