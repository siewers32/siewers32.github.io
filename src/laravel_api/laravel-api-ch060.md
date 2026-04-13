---
title: API Security
date: 2023-08-20
---

# {{ course-title }}

## {{ title }}
De blade template engine maakt de presentatie van data via views mogelijk. Toch kun je laravel ook uitsluitend als back-end oplossing gebruiken. De presentatie wordt dan overgelaten aan javascript frameworks zoals Vue.js of React. Deze opzet is vooral van toepassing als je een single page application wilt maken.
Laravel publiceert dan data als json-objecten aan een front-end javascript applicatie.
Het gebruik van blade en views wordt op deze manier overbodig.

## Laravel Sanctum

In Laravel 8 is Sanctum standaard al geactiveerd. Ook een aantal van de starter-kits van Laravel zoals Jetstream en Breeze zijn al voorzien van Sanctum.
Sanctum is een authenticatie systeem voor o.a. SPA's, third-party apps en mobiele applicaties. De authenticatie gebeurt op basis van tokens. Het gebruik van tokens is essentieel voor API's zodat ook andere applicaties dan webbrowsers gebruik kunnen maken van authenticatie-mechanismen. Alleen webbrowsers werken met cookies en sessie-variabelen. De meeste webapplicaties zijn hierop gebaseerd.  
In eerste instantie stuur je vanuit een formulier je username en password naar de API.
* Naam en wachtwoord worden gechecked
* Indien alles ok....
  * Er wordt een token aangemaakt
Het token wordt bij ieder volgend request meegestuurd. Authenticatie vindt dan dus plaats op basis van het token. 

Hoe weet je of je sanctum al hebt geïnstalleerd?
* In composer.json staat een regel: "laravel/sanctum": "^2.xx",
* In de map config is een bestand 'sanctum.php'
* Er is een migration-file die zorgt voor een extra tabel met API tokens (personal_access_token)
* In het User-model wordt gebruik gemaakt van de 'HasApiTokens'-trait
````php
class User extends Authenticatable
{
    use HasApiTokens;
  ....
````

## Session based authenticatie vs token-bases authenticatie.
Standaard Laravel applicaties die zijn gebaseerd op views met blade werken met cookies en sessies. Authenticatie en authorisatie gebeurd door een key te zetten als cookie en te associeren met data op de server (session-data).
Het voordeel van sessie-authenticatie is dat je gebruik kunt maken van csrf-tokens en dat je daarmee je app tegen xss-aanvallen beschermt.  
Sanctum zal proberen te werken met een sessies, maar als dat niet kan wordt de authenticatie op basis van het token gedaan. 

## Registreren
Om 'users' te registreren en in te kunnen loggen is het handig om een aparte controller te maken...
```php
php artisan make:controller AuthController
```
Om een user te registreren zijn naam, email, password en een rol nodig. Op basis van de rol wordt bepaald wat de 'user' allemaal mag en kan (abilities).
In eerste instantie moet de data om de 'user' aan te maken gevalideerd worden. Dit kan weer met een formrequest.
```php
php artisan make:request StoreUserRequest
```
Dit zijn de 'rules' waarmee de data wordt gecontroleerd...
```php
    public function rules()
    {
        return [
            'name' =>'required|string',
            'email'=>'required|string|email|unique:users,email',
            'password' =>'required|confirmed',
            'role' => 'required'
        ];
    }
```
In de AuthController wordt een register-methode gedefinieerd, waarbij een user wordt aangemaakt in de database...
```php
   public function register(StoreUserRequest $request) {
        $user = new User;
        $user->name = $request['name'];
        $user->email =$request['email'];
        $user->role = $request['role'];
        $user->password = Hash::make($request['password']);
        $user->save();

```
Met sanctum kun je zgn. abilities verwerken in een token. Bijvoorbeeld 'read', 'edit post', 'destroy user' etc. zijn 'abilities' die je kunt koppelen aan een rol. Je kunt de koppeling tussen rol en abilities natuurlijk opslaan in een database, in dit geval is er voor gekozen om een object te maken waarin de rollen en abilities zijn verwerkt. 
Om gebruik te kunnen maken van 'abilities' moet je nog 2 classes toevoegen aan de variabele '$routeMiddleWare' in 'kernel.php':
````php
    protected $routeMiddleware = [
        ....
        'abilities' => \Laravel\Sanctum\Http\Middleware\CheckAbilities::class,
        'ability' => \Laravel\Sanctum\Http\Middleware\CheckForAnyAbility::class
    ];  
````

Met de methode getAbilities wordt een array met abilities voor een bepaalde rol opgehaald.
```php
namespace App\Http\Lib;
class Abilities
{
    public function getAbilities($role) {
        $abilities =  [
          'admin' => ['edit-any', 'create-movie', 'destroy-any'],
          'user' => ['edit-own', 'create'],
          'editor'  => ['edit-any']
        ];
        if(in_array($role, array_keys($abilities))) {
            return $abilities[$role];
        } else {
            return array();
        }
    }
}
```
Sanctum kan op basis van het user-object een token genereren en opslaan in de database (personal_access_tokens-tabel). De abilities worden verwerkt in het token....
```php
   public function register(Abilities $abilities, StoreUserRequest $request) {
        $user = new User;
        $user->name = $request['name'];
        $user->email =$request['email'];
        $user->role = $request['role'];
        $user->password = Hash::make($request['password']);
        $user->save();
        
        $tokenabilities = $abilities->getAbilities($user->role);
        $token = $user->createToken('test-app-token', $tokenabilities)->plainTextToken;
        $response = [
            'status'=>true,
            'message'=>'registered successfully!',
            'data' =>[
                'user'=>$user,
                'token'=>$token
            ]
        ];
        return response($response,201);
    }
```
Om de authorisatie te laten werken kun je gebruik maken van de sanctum-middleware in de routes. Bijvoorbeeld om uit te loggen moet een gebruiker een token hebben. (Er zijn verder geen abilities vereist)
```php
Route::post("/logout",[AuthController::class,'logout'])->middleware('auth:sanctum');
```
Niet iedereen mag movies aanmaken. Daarvoor is de ability 'create-movie' voor vereist...
```php
Route::post('/movies', [MovieController::class, 'store'])
                ->middleware('auth:sanctum', 'abilities:create-movie');
```

