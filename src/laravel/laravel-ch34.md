---
title: Authenticatie
date: 2023-06-15
auteur: jsiewers
---

# {{ course-title }}

## {{ title }}

Authenticatie kun je natuurlijk zelf programmeren. Je hebt een mogelijkheid nodig om je te registreren, vervolgens kun je inloggen in de applicatie. Authenticatie zegt nog niet veel over wat je allemaal mag in de applicatie, het betekent alleen dat je geen `bezoeker` meer bent, maar een `gebruiker` in het systeem. 

Authorisatie bepaald wel wat je wel en niet mag in een applicatie. Gebruikers worden meestal gekoppeld aan een rol in het systeem. De rol bepaald wat je wel en niet mag.
Vaak is de rol `admin` toebedeeld aan een gebruiker die alles mag. De `admin` is de beheerder van de applicatie.

Je kunt dit allemaal zelf maken, maar het idee van een framework als Laravel is juist dat je dat niet meer hoeft te doen en dat je gebruik kunt maken van bestaande modules in Laravel. De documentatie van Laravel stelt een aantal starterkits voor die je hiervoor kunt installeren. We gaan hier verder met Laravel Breeze!

## Breeze
Bekijk de documentatie van Laravel om te zien hoe je Breeze installeert. In Laravel 10 gaat het als volgt:
Ga naar de directory met de laravel installatie en open de terminal...
```shell
composer require laravel/breeze --dev
```
Met dit commmando haalt composer de pakketten op die nodig zijn en voegt ze toe aan een bestaande laravel installatie.

Vervolgens:
```shell
php artisan breeze:install
```
Je krijgt dan de keuze uit een paar opties:
```shell
Which stack would you like to install?
  blade ....................... 0  
  react ....................... 1  
  vue ......................... 2  
  api ......................... 3  
```
Kies `0` voor `Blade`. Vervolgens krijg je nog een aantal opties die je allemaal met `no` kunt beantwoorden. Uiteindelijk wordt je applicatie opgetuigd met routes, models en controllers (en meer) die het mogelijk maken om authenticatie toe te passen.

Wat is er veranderd in je applicatie nadat Breeze is geïnstalleerd? 
In eerste instantie zie je dat er een aantal routes bij zijn gekomen, maar helaas zijn eerder gemaakt routes voor home en contact overschreven. (Let daar op!)
``` php
// web.php
Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';
```
Onderaan zie je dat er nog een bestand wordt ingesloten (met `require __DIR__./'auth.php'`).
In `auth.php` worden ook nog een aantal routes gedefinieerd zoals `/login`, `/register` etc.
Breeze zorgt voor een compleet authenticatiesysteem inclusief registreren, inloggen, wachtwoorden aanpassen etc.
De map `resources/views` is ook gevuld met een scala aan componenten en layout-bestanden die er voor zorgen dat er een mooi dashboard wordt weergegeven met alles wat nodig is voor authenticatie.

## Authenticatie toepassen
Het slechte nieuws is dat we eerder gedefinieerde routes zijn kwijtgeraakt, maar we kunnen de routes opnieuw aanmaken en er voor zorgen dat bepaalde routes alleen toegankelijk zijn voor gebruikers die zijn ingelogd.

``` php
Route::get('/home', function() {
    return view('home');
});
Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
    Route::get('/contact', function() {
        return view('contact', ['data' => 'wereld']);
    });
 });

```

De url naar `/home` werkt nu altijd en voor iedereen, maar de url naar `/contact` werkt nu alleen voor mensen die zijn ingelogd. Als je niet bent ingelogd wordt je automatisch doorgestuurd naar het inlogformulier.

## Hoe nu verder
Naast Laravel Breeze is er Laravel Jetstream. Zie documentatie Laravel. Jetstream gaat nog veel verder met o.a. teammanagement en gebruik van verschillende rollen.