---
title: Movie-Relations
date: 2023-08-05
---

# {{ course-title }}

## {{ title }}
Om gegevens weer te geven moeten we gebruik maken van de request cycle. 
* Er moet een route worden gedefinieerd (in routes/web.php)
* Er moet een controller worden gemaakt die de gegevens omzet naar json, zodat we kunnen zien wat er uit de database is opgehaald. (download hiervoor een json extensie voor je browser voor een betere weergave of maak gebruik van een tool om met api's te communiceren zoals postman).

## Controllers
Maak een nieuwe controller waarin alle movie-acties komen....
```php
php artisan make:controller MovieController
```
De controller komt in de map App/Http/Controllers. De controller gaat intensief gebruik maken van het Movie-model. Dit is de code om in ieder geval alle movies weer te geven als json-data...
Voeg deze route toe aan routes/web.php...
```php
Route::get('/movies', [MovieController::class, 'index']);
```
De route verwijst naar de methode index in de MovieController. Deze methode moeten we aanmaken...
```php
class MovieController extends Controller
{
    function index() {
        return Movie::all()->toJson();
    }
}
```
Ga naar 'http://127.0.0.1/8000/movies' en zie...
```javascript
[
  {
    "id": 1,
    "title": "Tokyo Story",
    "year": 1953,
    "created_at": "2021-11-07T17:47:11.000000Z",
    "updated_at": null
  },
  {
    "id": 2,
    "title": "Sunrise",
    "year": 1927,
    "created_at": "2021-11-07T17:47:11.000000Z",
    "updated_at": null
  },
]
```
## Relaties met Eloquent
Om alle movies en hun ratings weer te geven kunnen we gebruik maken van de mogelijkheden van Eloquent of van de Querybuilder van Laravel. Eloquent is een zgn. ORM een object-relational-manager. Het doel is om het opzoeken en manipuleren van data zoveel mogelijk te integereren in de programmeeromgeving. Dat betekent dat het opvragen zoveel mogelijk object-georiënteerd gaat en dat resources uit de database zo goed mogelijk worden vertaald naar objecten en arrays.
Eloquent maakt gebruik van informatie uit de models om dit te doen. Als we alle movies en hun ratings op willen halen dan moeten we in de models definiëren wat hun relatie is.

## Een-op-meer
Voor movies betekent dit:
* Een movie has-many ratings.
* Een rating belongs-to one movie.

Er is dan nog wel een model nodig voor de tabel ratings.
```php
php artisan make:model Rating
```

In de models ziet dat er als volgt uit:
```php
class Movie extends Model
{
    use HasFactory;

    public function ratings() {
        return $this->hasMany(Rating::class);
    }
}
```
In routes/web.php (of api.php als je een api bouwt) wordt er een route toegevoegd.
```php
Route::get('/movies-with-ratings', [MovieController::class, 'withRatings']);
```
In de MovieController wordt een query opgebouwd die de ratings aggregeerd op basis van het gemiddelde (withAvg).
```php
    function withRatings() {
        return Movie::withAvg('ratings', 'rating')->get()->toJson();
    }
```
Met http://127.0.0.1/movies-with-ratings/ is dit het resultaat..
```javascript
 {
    "id": 2,
    "title": "Sunrise",
    "year": 1927,
    "created_at": "2021-11-07T17:47:11.000000Z",
    "updated_at": null,
    "ratings_avg_rating": "4.0000"
  },
  {
    "id": 3,
    "title": "A Space Odyssey",
    "year": 1968,
    "created_at": "2021-11-07T17:47:11.000000Z",
    "updated_at": null,
    "ratings_avg_rating": "3.5000"
  },

```
## Many-to-Many
In het volgende voorbeeld gaan we een weergave maken van een user met de movies die hij/zij een rating heeft gegeven. In het model van de 'User' moeten we de relatie met 'Movie' opnemen. Deze relatie gaat op basis van de tussentabel 'ratings' omdat het een meer-op-meer relatie is. In het 'User'-model gebruik je daarom 'belongsToMany' in plaats van 'hasMany'. De methode 'withPivot' zorgt ervoor dat we ook een waarde uit de tussentabel weer kunnen geven. De 'rating' is immers opgeslagen in de tussentabel 'ratings'.

In 'App/Models/User.php'...
```php
    public function movies() {
        return $this->belongsToMany(Movie::class, 'ratings')->withPivot('rating');
    }
```
In App/Http/Controllers/UsersController gebruiken we de relatie om de movies bij 1 user op te halen op basis van het 'id'.
```php
    function withMovies($id) {
        return User::with('movies')->where('id', $id)->first()->toJson();
    }
```
en in routes/web.php
```php
Route::get('/user-with-movies/{id}', [UserController::class, 'withMovies']);
```
Resultaat:
```javascript
{
  "id": 1,
  "name": "spock",
  "email": "spock@gmail.com",
  "email_verified_at": null,
  "created_at": "2021-11-07T17:47:11.000000Z",
  "updated_at": null,
  "movies": [
    {
      "id": 1,
      "title": "Tokyo Story",
      "year": 1953,
      "created_at": "2021-11-07T17:47:11.000000Z",
      "updated_at": null,
      "pivot": {
        "user_id": 1,
        "movie_id": 1,
        "rating": 5
      }
    },
    {
      "id": 2,
      "title": "Sunrise",
      "year": 1927,
      "created_at": "2021-11-07T17:47:11.000000Z",
      "updated_at": null,
      "pivot": {
        "user_id": 1,
        "movie_id": 2,
        "rating": 3
      }
    }
  ]
}
```