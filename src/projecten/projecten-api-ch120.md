---
title: Simple Laravel API
date: 2022-09-16
---

# {{ course-title }}

## {{ title }}

## Installatie met composer
``` shell
composer create-project laravel/laravel simple-api

```
## MySQL Data
Maak een database aan: simple-api...  
In sql-client terminal:
``` sql
mysql> create database simple-api;
```
Pas het .env-bestand aan in laravel met de juiste gegevens voor de database:
``` shell
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=simple_api
DB_USERNAME=root
DB_PASSWORD=root
```
* Maak de standaard laravel-tabellen aan voor users, passwords en tokens met php artisan.
``` shell
php artisan migrate
```
* Voeg de [tabel customers](/_assets/projecten/customers.sql) toe aan de simple_api database
``` sql
mysql> use simple_api;
mysql> source C:\customers.sql;
```
## Routes definiëren
In de routes-folder kun je nu een route toevoegen aan api.php.
``` php
use Illuminate\Support\Facades\DB;

Route::get('/customers', function(Request $request) {
    return DB::table('customers')->get()->toJson();
});
```
In de browser ga je nu naar http://127.0.0.1/api/customers en voila je ziet een overzicht van alle customers.

