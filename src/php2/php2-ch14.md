---
title: Inheritance
date: 2022-04-07
---

# {{ course-title }}

## {{ title }}
Een eigenschap van een klasse is de mogelijkheid van overerving (= nederlands voor inheritance). 
Overerving kun je toepassen als je objecten hebt die op elkaar lijken en eigenschappen van elkaar kunnen overnemen.
Neem bijvoorbeeld een applicatie over koeien! We starten met een klasse Koe!
Een koe heeft 4 poten, hij roept boe en hij eet gras
Dus:
````php
class Koe
{
    public int $aantal_poten;
    public string $kleur;
    public string $voer;
    public string $geluid;

    public function __construct()
    {
        $this->aantal_poten = 4;
        $this->kleur = "geel met wit";
        $this->voer = "gras";
        $this->geluid = "Boe";        
    }

    public function asText() {
        echo 'Ik ben een koe met '.$this->aantal_poten. ' poten,  
        ik ben grotendeels '.$this->kleur.' en ik lust graag '.$this->voer." en 
        ik roep ".$this->geluid."<br>";
    }
}
````
Toch zijn een bruine koe, en een lakenvel allebei koeien, maar wel van een andere soort.
Er zijn dus overeenkomsten en een aantal verschillen. De klasse bruine koe overerft het aantal_poten en het geluid, maar het voer van de koe en de kleur verschillen.

````php
class BruineKoe extends Koe
{
    public function __construct()
    {
        parent::__construct();
        $this->kleur = 'bruin';
        $this->voer = 'gras en bix';
    }
}

class LakenVel extends Koe
{
    public function __construct() {
        parent::__construct();
        $this->kleur = 'zwart met wit';
        $this->voer = 'gras';
    }
}
````
In de constructor van de bruine koe en de lakenvel wordt met parent::__construct() de constructor van de Koe aangeroepen. Alle koeien hebben 4 poten. In de constructor van Koe worden die 4 poten geïnitialiseerd (= van een beginwaarde voorzien).
Bij de bruine koe wordt de constructor nog aangevuld met de kleur 'bruin' en het voer 'gras en bix'. Op dezelfde manier wordt de Lakenvel aangepast.

````php
$bkoe = new BruineKoe();
$bkoe->asText();

$lkoe = new LakenVel();
$lkoe->asText();
````
De volgende teksten worden op het scherm getoond:
* Ik ben een koe met 4 poten, ik ben grotendeels bruin en ik lust graag gras en bix en ik roep Boe.
* Ik ben een koe met 4 poten, ik ben grotendeels zwart met wit en ik lust graag gras en ik roep Boe.

## Toets
Schrijf je in op [de site](https://mdl.edutorial.nl) en schrijf je in voor de cursus OOPHP.
Volg [deze link](https://mdl.edutorial.nl/mod/quiz/view.php?id=4) om de toets te maken.

## Opdracht Models
Een model is in dit geval een klasse voor een tabel in een database. Door gebruik te maken van deze klasse en vervolgens een subklasse te maken voor iedere tabel in de database kun je veel code hergebruiken.
Het ophalen van alle records uit een tabel is steeds weer dezelfde sql-query. Het enige dat steeds verandert is de tabelnaam.  
* Clone de repository: [https://github.com/siewers32/models](https://github.com/siewers32/models)
* importeer mdb.sql in je mysql-server
* Bestudeer de code:
  * Er zijn 3 klassen
  * DB met een methode om een databaseconnectie op te zetten
  * Model is een abstracte klasse. Je kunt de functionaliteit uit deze klasse alleen gebruiken als je een subklasse aanmaakt
  * UserModel is een subklasse van Model
* Maak een nieuwe klasse MovieModel aan
  * Bestudeer mdb.sql
  * Net als in UserModel pas je de waarden voor table, fields en primary key (pk) aan.
* Gebruik MovieModel om alle movies weer te geven
* Maak een formulier om nieuwe movies toe te kunnen voegen
