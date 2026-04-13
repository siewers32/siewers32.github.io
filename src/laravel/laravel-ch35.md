---
title: Migrations
date: 2023-06-15
auteur: jsiewers
---

# {{ course-title }}

## {{ title }}

In het onderdeel Authenticatie heb je gezien hoe `Breeze` gebruik maakt van gegevens uit een database. Het creeëren van tabellen en het toevoegen van gegevens kun je doen met migrations. 

In de map database vind je de volgende bestanden:
 ```shell
database
 |-- factories
    |-- ...
 |-- seeders
    |-- ...
 |-- migrations
    |-- 2014_10_12_000000_create_users_table.php
    |-- 2014_10_12_100000_create_password_reset_tokens_table.php
    |-- 2019_08_19_000000_create_failed_jobs_table.php
    |-- 2019_12_14_000001_create_personal_access_tokens_table.php
```
Deze bestanden bevatten code om de verschillende tabellen aan te maken die nodig zijn voor authenticatie voor zowel webapplicaties als API's.
Hieronder een deel van de inhoud van 2014_10_12_000000_create_users_table.php
```php
    public function up(): void
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('email')->unique();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->rememberToken();
            $table->timestamps();
        });
    }
```
De `up()` functie bevat de code om een tabel 'users' aan te maken. In het `$table`-object wordt aangegeven welke velden er zijn en van welk type de velden zijn.

Iedere tabel die wordt gemaakt met migrations bevat `timestamps()`. Dit zijn 2 velden waarmee de datum van aanmaak en de datum van wijziging van een record in een tabel wordt opgeslagen.  

Om zelf een nieuwe tabel aan te maken gebruik je het volgende commando:
```shell
php artisan make:migration create_menu_items
```
Er wordt een nieuwe migration aangemaakt
```php
    public function up(): void
    {
        Schema::create('menu_items', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
        });
    }
```
Om menu-items op te kunnen slaan zijn 2 velden nodig. Een naam van het menu-item en een categorie-id (verderop wordt hier gebruik van gemaakt). 
De `up()`-functie ziet er nu zo uit:
```php
    public function up(): void
    {
        Schema::create('menu_items', function (Blueprint $table) {
            $table->id();
            $table->integer('category_id');
            $table->string("name");
            $table->timestamps();
        });
    }
```
Om de nieuwe tabel in de database aan te maken voer je het volgende commando uit:
```shell
php artisan migrate
```
De up-functie wordt uitgevoerd en de tabel wordt aangemaakt.

