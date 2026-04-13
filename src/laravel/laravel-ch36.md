---
title: Formulier
date: 2023-06-20
auteur: jsiewers
---

# {{ course-title }}

## {{ title }}

Om gegevens aan een applicatie toe te voegen, aan te passen of te verwijderen maak je gebruik van formulieren.  
Hier wordt getoond hoe je een bezoeker de mogelijkheid geeft om alle menu_items uit een tabel in de database weer te geven. Daarnaast kan een ingelogde gebruiker ook gegevens toevoegen.  
Er wordt gebruik gemaakt van de blade-componenten die met de installatie van `Breeze` zijn geïnstalleerd.

## Gegevens toevoegen

Om gegevens toe te kunnen voegen is er een formulier nodig. Het formulier wordt gemaakt op basis van de layout zoals die met `Breeze` is geïnstalleerd.
In de map `resources/views/layout` zijn de bestanden die de basislayout van `Breeze` bepalen. In `resources/views/auth` vind je het login-formulier.  
Door een kopie van het login-formulier te maken en dit aan te passen, krijg je eenvoudig een formulier om menu_items toe te kunnen voegen.
Dit is een stukje formulier uit `resources/views/auth/login.blade.php`.

```php
   <form method="POST" action="{% raw %}{{ route('login') }}{% endraw %}">
        @csrf
        ...
    </form>
```
`route('login')` verwijst naar een named route. In web.php vind je meer named routes. Je kunt een route een naam geven door de methode `name('...')` aan te roepen:
```php
Route::post('/add_menu_item', function(Request $request) {
    ...
    return view('menu_items', ['menu_items' => $menuItems]);    
})->name('add_menu_item');

```
In bovenstaand formulier moet je de action dus aanpassen naar de route voor het toevoegen van een menu_item:
```php
   <form method="POST" action="{% raw %}{{ route('add_menu_item') }}{% endraw %}">
```
Daarnaast moet je nog de velden aanpassen. Om een menu_item toe te voegen heb je een `name` nodig en een `category_id`
```php
<!-- Menu Item -->
<div>
    <x-input-label for="name" :value="__('Name')" />
    <x-text-input id="name" class="block mt-1 w-full" type="text" name="name" :value="old('name')" required />
    <x-input-error :messages="$errors->get('name')" class="mt-2" />
</div>

<div>
    <x-input-label for="category_id" :value="__('Category')" />
    <x-text-input id="category_id" class="block mt-1 w-full" type="number" name="category_id" :value="old('category_id')" required />
    <x-input-error :messages="$errors->get('category_id')" class="mt-2" />
</div>
 
<x-primary-button class="ml-3">
    {% raw %}{{ __('Add') }}{% endraw %}
</x-primary-button>
```

Als er op de `Add`-knop wordt gedrukt, gebeurt er het volgende:
* De `Route::post()` met de naam `add_menu_item` wordt getriggered door de `action` uit het formulier.
* Er wordt op basis van het `MenuItem`-model een nieuw `$menuItem`-object gemaakt. 
* De naam en de category_id uit het formulier worden toegekend aan de attributen in het object (`$menuItem->name = $request->name`).
* Het object wordt bewaard (`$menuItem->save()`). Hier wordt het record opgeslagen in de database.
* Vervolgens wordt er een query uitgevoerd op alle records in de database (`MenuItem:all()`)
* De view wordt aangeroepen met de set gevonden records (`return view('menu_items', ['menu_items' => $menuItems])`)

Zo ziet de route er nu uit:
```php
Route::post('/add_menu_item', function(Request $request) {
    $menuItem = new MenuItem();
    $menuItem->name = $request->name;
    $menuItem->category_id = $request->category_id;
    $menuItem->save();
    $menuItems = MenuItem::All();
    return view('menu_items', ['menu_items' => $menuItems]);    
})->name('add_menu_item');
```
