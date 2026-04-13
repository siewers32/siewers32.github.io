---
title: Request lifecycle
date: 2023-06-03
---

# {{ course-title }}

## {{ title }}
[Lees hier meer over op laravel.com](https://laravel.com/docs/8.x/lifecycle). Hier wordt een korte uitleg gegeven van de stappen die worden genomen van request (het intypen van de url in de browser of het versturen van een formulier) tot aan de het teruggeven van de response (de pagina die wordt teruggestuurd naar de browser).  

Nadat je een Laravel applicatie hebt geïnstalleerd met composer krijg je een hoeveelheid mappen met bestanden. De map public is de map die door de webserver wordt gepubliceerd.
Het opstarten van je applicatie doe je vanuit de map movie-app....

```php
php artisan serve
Starting Laravel development server: http://127.0.0.1:8000
[Wed Oct 27 20:55:18 2021] PHP 8.0.8 Development Server (http://127.0.0.1:8000) started
```

Als je naar de url gaat zie je het startscherm van laravel.

## Wat is er gebeurd?
In eerste instantie wordt het bestand index.php gelezen.
Alle aanvragen in een Laravel applicatie gaan via index.php. Dit gebeurt omdat de websserver hierop is ingesteld. In de map public vind je een bestand met de naam .htaccess. Htaccess wordt door de webserver gelezen en geeft je de mogelijkheid om op map-niveau de configuratie van de apache webserver aan te passen. In htaccess worden alle url-aanvragen doorgestuurd naar index.php. In de $_SERVER array kun je nog steeds de oorspronkelijke aanvraag terugvinden. Door middel van het routing-mechanisme in Laravel krijgt je de weergave te zien die bij de url-aanvraag hoort.



## index.php
In index.php worden een aantal bestanden ingeladen (met require). De applicatie wordt gestart met het bestand app.php. 
```php
$app = require_once __DIR__.'/../bootstrap/app.php';
```
app.php is de service container van een laravel applicatie. In de service container worden services opgeslagen die worden gebruikt door de applicatie. Denk bijvoorbeeld aan een databaseconnectie. Als een databaseconnectie nodig is, dan wordt die uit de service container opgevraagd.

Welke applicatie-onderdelen worden gebruikt wordt bepaald door de router. De router bepaalt aan de hand van de url welke classes en methoden moeten worden uitgevoerd.
De url https://www.movie-app.nl/user/1
Op basis van 'user' en '1' kan de applicatie besluiten om de gebruiker met id 1 op te halen en weer te geven.
De router bepaald op basis van routes hoe een url moet worden geïnterpreteerd.

In de movie-app applicatie kun je zelf een route maken in de map routes->web.php
De eerste route bestaat al. Die zorgt voor het welkomst-scherm van laravel. De tweede route regelt dat de aanvraag http://127.0.0.1:8000/test een response met de tekst 'Hello World' teruggeeft aan de browser.
```php
Route::get('/', function () {
    return view('welcome');
});

Route::get('/test', function () {
    return 'Hello World';
});
```






