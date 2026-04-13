---
title: Validatie
date: 2023-08-15
---

# {{ course-title }}

## {{ title }}
Met de nodig routes en controllers op hun plek, kunnen we nu de methoden bouwen waarmee gegevens worden opgehaald, opgeslagen en verwijderd.

## Gegevens opslaan
Om een movie op te slaan hebben we een aantal gegevens nodig. In de app is er minimaal een 'title' en een 'year' nodig, aangezien het 'id' automatisch wordt aangemaakt (auto-increment) hoef je daar niks voor te doen!
Dit is de code voor de store-methode in de MovieController:
```php
public function store(Request $request) {
    $movie = new Movie;
    $movie->title = $request->title;
    $movie->year = $request->year;
    $movie->save();
    return response()->json([
        'message' => 'Movie is succesvol toegevoegd',
    ]);
}
```
Een manier om bovenstaande code te testen is om een post-request te sturen naar de api met de benodigde gegevens.
Dit kan met Postman. In Postman maak je een url: http://127.0.0.1:8000/api/movies die je aanroept met de methode POST. In de body stuur je de form data mee (x-www-form-urlencoded). Geef een waarde voor 'title' en een waarde voor 'year'.
Om alles goed te laten werken moet je er ook nog voor zorgen dat je Postman de gegevens verstuurt als JSON en ook de response weer als JSON-code ontvangt. Dit doe je door de volgende headers mee te sturen:
```javascript
Accept: application/json
Content-type: application/json
```
Als je de url aanroept, maakt Laravel een nieuw record aan in de movie-tabel en geeft de melding terug dat de movie succesvol is toegevoegd!
```javascript
{
    "message": "Movie is succesvol toegevoegd"
}
```

## Gegevens controleren
Het is natuurlijk geen goed idee om willekeurige data van een client zo maar op te slaan. Vanuit security-oogpunt moet alle data die van gebruikers of andere systemen komt vooraf gechecked worden op geldigheid en validiteit.
In Laravel moet je daarom de gegevens valideren voordat je ze opslaat.
In het request-object is een functie 'validate' beschikbaar die dit voor je kan doen:
```php
  public function store(Request $request) {
      $validated = $request->validate([
        'title' => 'required|max:255',
        'year' => 'required|numeric'
      ],
      [
        'year.numeric' => 'Een jaar moet worden uitgedrukt in cijfers!'
      ]);  
       
      $movie = new Movie;
      $movie->title = $request->title;
      $movie->year = $request->year;
      $movie->save();
      return response()->json([
          'message' => 'Movie is succesvol toegevoegd',
      ])             
  }

```
Als je opnieuw probeert een movie aan te maken waarbij 'year' de waarde 'abcd' heeft, dan krijg je een foutmelding terug omdat 'year', 'numeric' moet zijn. In bovenstaand voorbeeld is de foutmelding handmatig aangepast. Het resultaat is:
```javascript
{
    "message": "The given data was invalid.",
    "errors": {
        "year": [
            "Een jaar moet worden uitgedrukt in cijfers!"
        ]
    }
}
```

## Formrequest
Aangezien je bij een 'update' van een record weer dezelfde data moet controleren als bij 'store' is het misschien niet altijd logisch om de validatieregels op te nemen in een methode in de controller. Je gaat dan al snel dezelfde code kopiëren. Om dit te ondervangen kun je ook gebruik maken van een formrequest. Een formrequest is een class die je kunt aanroepen wanneer je hem nodig hebt in een controller. Zo kun je dezelfde validatie-logic op meerdere plekken in je controller gebruiken zonder dat je code kopieert.
Zo maak je een formrequest aan:
```php
php artisan make:request StoreMovieRequest
```
Een formrequest biedt nog extra functionaliteit. Naast het feit dat je op basis van 'rules' kunt bepalen of de gegevens geschikt zijn om op te slaan, kun je ook controleren of de gebruiker voldoende rechten 'authorize' heeft om de gewenste actie uit te voeren.
In bovenstaand voorbeeld kun je dezelfde validatieregels gebruiken als in de controller:
```php
//StoreMovieRequest
public function authorize() {
    return true; //We doen nog niks met authorisatie, dus deze moet 'true' zijn.
}

public function rules() {
   return [
      'title' => ['required', 'max:255'],
      'year' => ['required', 'numeric'],
    ];
}

public function messages() {
    return [
      'year.numeric' => 'Een jaar moet worden uitgedrukt in cijfers!'
    ];
}
```
