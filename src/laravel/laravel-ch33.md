---
title: Models en Controllers
date: 2023-06-10
---

# {{ course-title }}

## {{ title }}

Laravel werkt volgens het [model-view-controller](https://nl.wikipedia.org/wiki/Model-view-controller-model) concept. Volgens dit concept wordt de opslag van data, het bewerken van data en de presentatie van data gescheiden in de applicatie. In de praktijk blijkt deze opdeling van verantwoordelijkheden te leiden tot applicaties die makkelijk te schalen zijn en code die goed herbruikbaar is.

In Laravel betekent dit onderscheid dat alle database-acties worden ondergebracht in models. De controllers verbinden de data met de javascript, css en html uit de view.

## Controllers
Vanaf de command-line in de projectmap kun je een controller aanmaken
```php
php artisan make:controller MenuItemController
```
Artsisan maakt een MenuItemController.php aan in de map app->Http->Controllers met de volgende code:
```php
<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class MenuItemController extends Controller
{
    //
}
```
In de class MenuItemController kunnen we de volgende methode schrijven...
```php
class MenuItemController extends Controller
{
    function index() {
        return "Hello World";   
    }
}
```
Om de index-methode aan te roepen in de MenuItemController is er een route nodig in app->routes->web.php
```php
use App\Http\Controllers\MenuItemController;
Route::get('/menu_item', [MenuItemController::class, 'index']);
```

## Models
Een model wordt gebruikt om de communicatie met een gegevensbron zoals bijvoorbeeld database mogelijk te maken.
De models van Laravel/Eloquent maken gebruik van PDO (Persisten database object) om queries en data te sturen naar een databaseserver. De connectie heeft gegevens nodig uit het .env-bestand in de projectmap.
```php
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=mdb
DB_USERNAME=root
DB_PASSWORD=secret
```
Met php artisan kan een model worden gecreeërd. Een model is de classe-presentatie van een tabel. Laravel koppelt een model met de naam 'Movie' automatisch aan de tabel met de naam 'movies'. Laravel maakt de tabelnaam in kleine letters en in meervoud. Dit gaat natuurlijk alleen goed als je de tabellen engelse benamingen geeft. Gelukkig kun je de tabelnaam ook zelf instellen met de eigenschap $table. 
Laravel gaat er ook van uit dat je tabel een primaire sleutel heeft met de naam 'id'. Dit kun je eventueel ook aanpassen. Als je start met Laravel is het handig om zo veel mogelijk engelse benamingen te gebruiken, zodat je applicatie de [naam-conventies van Laravel](https://xqsit.github.io/laravel-coding-guidelines/docs/naming-conventions/) volgt.

```php
php artisam make:model MenuItem
```
```php
class MenuItem extends Model
{
    use HasFactory;
}
```
In feite is dit al voldoende om gegevens uit een database op te halen en weer te geven.
De MenuItemController aangepast met een nieuwe methode 'show' in app->http->controllers->MenuItemController.php
Er wordt een nieuwe route gedefineerd (in routes->web.php) die gebruik maakt van de nieuwe methode in de TestController.

```php
//In web.php
Route::get('/menu_items', [MenuItemController::class, 'show']);

//In TestController.php
class MenuItemController extends Controller
{
    function index() {
        return "Hello World";
    }

    function show() {
        return MenuItem::all();
    }
}
```
Het resultaat is een lijst met alle menu-items uit de tabel menu_items!

## Views
Om het resultaat  weer te geven in een view wordt hier een voorbeeld gegeven:  
Views worden opgeslagen in resources->views. Voor het menu-item-overzicht wordt het bestand menu_items.blade.php in de views-map aangemaakt.
Een blade-template bestaat uit html waarbinnen variabelen en zgn. blade-directives gebruikt worden om door php/laravel gegenereerde data weer te geven. Om de movies weer te geven kun je de volgende code gebruiken....

```php
<!DOCTYPE html>
<html lang="nl_NL">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Laravel</title>
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Nunito', sans-serif;
        }
    </style>
</head>
<body>
<table>
    <tr>
        <th>Name</th>
        <th>Category ID</th>
    </tr>
    @foreach ($menu_items as $menu_item)
    <tr>
        <td>{% raw %}{{ $menu_item->name }}{% endraw %}</td>
        <td>{% raw %}{{ $menu_item->category_id }}{% endraw %}<td>
    </tr>
    @endforeach
</table>
</body>
</html>
```
De variabelen herken je aan de {% raw %}{{ ... }}{% endraw %} structuur. Binnen de accolades kun je php code gebruiken.
Daarnaast zie je de for-each loop die bestaat uit blade-directives (@foreach .... @endforeach).