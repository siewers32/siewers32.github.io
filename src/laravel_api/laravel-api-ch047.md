---
title: Migrations
date: 2023-08-01
---

# {{ course-title }}

## {{ title }}

In het voorbeeld met movies en ratings is de rating-tabel een pivot-table. Een movie kan meerdere keren een rating ontvangen van een user en een user kan op zijn beurt meerdere movies een rating geven.
In de pivot-table 'ratings' wordt dit bijgehouden. Aangezien een user maar 1 keer dezelfde film een rating kan geven wordt de primaire sleutel voor de ratings-table een combinatie van het 'id' van de 'movie' en het 'id' van de 'user'.
Eerst maak je een migration-file
```php
php artisan make:migration create_ratings_table

```
Van de gecombineerde primaire sleutel wordt opgebouwd uit 'movie_id' en 'user_id'. Beide velden zijn ook nog eens vreemde sleutel van het 'id' in resp. de 'movie' en de user 'tabel'. In de migration moeten de volgende stappen worden genomen:
* Aanmaken van 'user_id' en 'movie_id' als 'unsigned bigInteger'.
* Beide velden combineren tot 1 primaire sleutel
* Relaties maken de 'user' en 'movie' tabel  

De up-methode voor deze migration ziet er nu zo uit:
```php
    public function up()
    {
        Schema::create('ratings', function (Blueprint $table) {
            $table->unsignedbigInteger('movie_id');
            $table->unsignedbigInteger('user_id');
            $table->primary(['movie_id', 'user_id']);
            $table->foreign('user_id')->references('id')->on('users');
            $table->foreign('movie_id')->references('id')->on('movies');
            $table->smallinteger('rating');
            $table->timestamps();
        });
    }
```

## Seeders
Nu de tabellen zijn gecreëerd hebben we nog een aantal records nodig om straks mee te kunnen testen.
Laravel biedt hiervoor de mogelijkheid om 'factories' en 'seeders' aan te maken. Mapjes voor deze bestanden vind je in `databases`. 
Laravel kan gebruik maken van een `faker`. Dit is een library die automatisch fake-data kan genereren. In dit geval willen we graag fake-movies aanmaken.
Hiervoor moeten we een faker-library installeren.
```shell
composer require xylis/faker-cinema-providers
```
Vervolgens maken we een `MovieFactory` met
```shell
php artisan make:factory MovieFactory
```
Met de MovieFactory in combinatie met Faker kun je een fake movie maken....
```php
    public function definition(): array
    {
        $faker = \Faker\Factory::create();
        $faker->addProvider(new FakeMovie($faker));
        return [
            'title' => $faker->movie,
            'year' => random_int(1975, 2022),
        ];    
    }

```
De `MovieFactory` produceert maar 1 movie, maar met een seeder kunnen we er meer maken...  
Creeër een MovieSeeder-class met `php artisan`
```php
php artisan make:seeder MovieSeeder
```
Vul de `MovieSeeder` aan met onderstaande code....
```php
use App\Models\Movie;

class MovieSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Movie::factory()->count(20)->create();
    }
}
```
Hetzelfde kun je doen om een aantal test-gebruikers toe te voegen....
```php
php artisan make:factory UserFactory
```
Dit is de factory om 1 user te maken...
```php
    public function definition(): array
    {
        return [
            'name' => fake()->name(),
            'email' => fake()->unique()->safeEmail(),
            'email_verified_at' => now(),
            'password' => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', // password
            'remember_token' => Str::random(10),
        ];
    }
```
```shell
php artisan make:seeder UserSeeder
```
Maak 10 users aan op basis van de `UserFactory`
```php
    public function run(): void
    {
        User::factory(10)->create();
    }

```
En nu de ratings. Ook hiervoor kun je een seeder maken. Je moet er alleen rekening mee houden dat je geen ratings aanmaakt van users of movies die niet bestaan. In dit geval is er voor gekozen om alle movies door een gebruiker een random rating te laten geven. 
```php
php artisan make:seeder RatingSeeder
```
```php
use App\Models\Movie;
use App\Models\User;
use App\Models\Rating;

class RatingSeeder extends Seeder
{
    public function run()
    {
        $movies = Movie::all();
        $users = User::all();
        foreach($movies as $movie) {
            foreach($users as $user) {
                $rating = new Rating();
                $rating->user_id = $user->id;
                $rating->movie_id = $movie->id;
                $rating->rating = random_int(0,5);
                $rating->save();
            }
        }        
    }
}
```
Om de seeders hun werk te laten doen moeten ze worden aangeroepen vanuit `DatabaseSeeder`
```php
    public function run(): void
    {
        $this->call([
            MovieSeeder::class,
            UserSeeder::class,
            RatingSeeder::class
        ]);
    }
```
En dan de migration uitvoeren om oude tabellen te verwijderen en een `fresh` installatie uit te laten voeren van de tabellen in de database.
Met`--seed` wordt `DatabaseSeeder` aangeroepen om alle gegevens toe te voegen aan de tabellen.

```php
php artisan migrate:fresh --seed
```