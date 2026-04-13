---
title: Movie-CRUD
date: 2023-08-10
---

# {{ course-title }}

## {{ title }}

Naast het ophalen van gegevens kun je ook de gebruikelijke create, update en delete acties uitvoeren. Het komt vaak voor dat je voor een model al deze acties beschikbaar wilt hebben. In het geval van de movie-app moeten users, movies en ratings kunnen worden aangemaakt en aangepast in de applicatie.  
Laravel biedt hiervoor de resource-controller. Een resource-controller biedt de standaard 'CRUD'-functionaliteit voor een model.  
Let op: Als je de vorige hoofdstukken hebt gevolgd, dan heb je al een model voor een movie. Bewaar de gemaakte methoden in het model even in een apart bestand, zodat je ze later weer toe kunt voegen aan het resource-model. 
Hieronder zie je om welke methoden het gaat:

````php
    function showWithAvgRating($id = null) {
        return Movie::withAvg('ratings', 'rating')->get()->toJson();
    }
    //en
        function withMovies($id) {
        return User::with('movies')->where('id', $id)->first()->toJson();
    }
````
Verwijder de bestaande MovieController en voeg dan opnieuw een controller toe. Je kunt dit doen met de optie --resource of met de optie --api. Met --resource ga je er van uit dat de formulieren in blade worden gemaakt, met --api worden alleen de routes aangemaakt om de CRUD acties uit te voeren. In deze applicatie gaan we de frontend zoveel mogelijk in een aparte app maken dus kiezen we hier voor:
```php
php artisan make:MovieController --api
```
Je krijgt nu opnieuw een MovieController, maar dan met de signatuur voor alle mogelijke CRUD functies (store, update en destroy). De functionaliteit voor de methoden moet nog wel worden toegevoegd.


## Resource controller
Het voordeel van een resource-controller is dat je in de routes met veel minder code toe kan om de verschillende CRUD functionaliteiten te activeren.

```php
Route::resource('movies', MovieController::class);
```
De Route::resource staat gelijk aan:
```php
Route::get('/movies', MovieController::class, 'index')
Route::post('/movies', MovieController::class, 'store')
Route::get('/movies/{movie}', MovieController::class, 'show')
Route::put('/movies/{movie}', MovieController::class, 'update')
Route::delete('/movies/{movie}', MovieController::class, 'destroy')
```
Om dezelfde functionaliteit voor de users en ratings te genereren maak je nog 2 ResourceControllers aan:

```php
php artisan make:UserController --api
php artisan make:RatingsController --api

//Voeg de routes toe aan routes/api.php

Route::resource('users', UserController::class);
Route::resource('ratings', RatingController::class);
```