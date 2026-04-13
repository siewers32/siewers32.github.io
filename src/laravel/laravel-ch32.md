---
title: Views
date: 2023-06-04
auteur: jsiewers
---

# {{ course-title }}

## {{ title }}

In een standaard installatie van Laravel wordt een route aangemaakt die er voor zorgt dat je het welkomstscherm te zien krijgt.  
met `return view('welcome')` wordt de pagina `resources/views/welcome.blade.php` aangeroepen. In deze pagina staat de html en css die er voor zorgt dat je een mooi welkomstscherm te zien krijgt.

Een view is een object dat de gegenereerde output van je applicatie samenvoegd met de layout in html en css.

```php
// routes/web.php

Route::get('/', function () {
    return view('welcome');
});
```

Het samenvoegen van HTML, CSS en componenten uit Laravel kun je op verschillende manieren doen. Je kunt gebruik maken van javascript frameworks zoals Vue en React, maar je kunt ook gebruik maken van de template-engine van Laravel zelf. Deze engine is heet Blade

## Blade
In onderstaand voorbeeld wordt Blade gebruikt om een simpele website te bouwen met 2 menu-items. In blade maak je gebruik van templates. Hierdoor kun je bijvoorbeeld een navigatiemenu in meerdere pagina's hergebruiken.  

* Maak 2 nieuwe routes.

```php
// routes/web.php

Route::get('/home', function () {
    return view('home');
});

Route::get('/contact', function () {
    return view('contact', ['data' => "wereld"]);
});
```
* Het view-object in de eerste route zorgt ervoor dat `home.blade.php` wordt aangeroepen.  
* Bij de tweede route naar `/contact` wordt met het aanroepen van de pagina ook nog `data` meegestuurd. Deze `data` in de route wordt de variabele `$route` in het view-object.
  
Maak 3 nieuwe templates met de naam `home.blade.php`, `contact.blade.php` en `layout.blade.php`.  
Hieronder zie je de directory-structuur

 ```shell
resources
 |-- views
    |-- layout.blade.php
    |-- home.blade.php
    |-- contact.blade.php
```

In `layout.blade.php` vind je de basisopmaak.

``` html
<!-- resources/views/layout.blade.php -->
<html>
    <head>
        <title>Restaurant | @yield('title')</title>
        <link rel="stylesheet" href="{% raw %}{{ asset('css/mystyle.css') }}{% endraw %}">
    </head>
    <body>
        <nav>
            <a href="/home">Home</a> | 
            <a href="/contact">Contact</a> | 
        </nav>
        <div class="container">
            @yield('content')
        </div>
    </body>
</html>
```
In de pagina's `home.blade.php` en `contact.blade.php` wordt de layout overgenomen.  
Dit is `home.blade.php`...

```html
<!-- resources/views/home.blade.php -->

@extends('layout')
 
@section('title', 'Home') 
 
@section('content')
    Dit is de home-page
@endsection
```
* Met `@extends('layout')` wordt de opmaak van de basispagina (layout) overgenomen.
* Met `@section('title','Home')` verander je de titel in de titelbalk van het paginavenster naar `Home`.
* Bij `@section('content')` wordt de variabele `$data` gebruikt die in het view-object is meegegeven.

Dit is `contact.blade.php`...

```html
<!-- resources/views/contact.blade.php -->

@extends('layout')
 
@section('title', 'Home') 
 
@section('content')
    Hallo {% raw %}{{ $data }}{% endraw %}
@endsection
```

In dit laatste voorbeeld zie je hoe je data mee kunt geven aan een view. Het woord "world" wordt in de route al toegekend aan de variabele `$data`.



