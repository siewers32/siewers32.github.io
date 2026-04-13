---
title: OO Programmeren
date: 2022-04-05
---

# {{ course-title }}

## {{ title }}
OO programmeren is een afkorting voor Objectgeoriënteerd programmeren. Deze vorm van programmeren is erg populair geworden omdat het developers een structuur biedt waardoor het mogelijk is om complexe applicaties beheersbaar te maken. Een ander groot voordeel van objectgeoriënteerd programmeren is dat het de mogelijkheid biedt om op een gestructureerde manier code her te gebruiken.
Bijna alle php-frameworks zijn gebaseerd op deze aanpak. Niet allemaal, want je ziet dat populaire CMS-frameworks (zoals Wordpress) een objectgeorienteerde aanpak maar deels omarmen.

## Wat is oo-programmeren
De term objectgeoriënteerd (oo) is afgeleid van het gebruik van zgn. 'objecten' in programmeertalen. Een object is vergelijkbaar met andere typen zoals string, int en array. In een object kun je (net als in een array) meerdere eigenschappen opslaan. Daarnaast kun je in een object ook methoden (=functies) opslaan. Een object heeft dus eigenschappen en het kan een aantal dingen.
Je kunt objecten vergelijken met 'dingen' in de echte wereld. Een 'auto' is een object of een 'fiets'. Een fiets heeft eigenschappen, zoals: kleur en formaat, maar een fiets kan ook van alles: rijden, bellen, remmen, sturen etc.
Een fiets-object ziet er in php zo uit:

````php
class Fiets {
    public string $kleur;
    public string $hoogte;
    public string $lengte;
    public int $snelheid;
    
    public function __construct() {
        $this->snelheid=0;
        // Deze code wordt uitgevoerd bij iedere nieuwe fiets!
    }
    
    public function rijden($km_per_uur) {
        //code om de fiets te laten rijden..
    }
    public function remmen($km_per_uur) {
        //code om de fiets te laten stoppen..
    }
    public function snelheidWeergeven() {
        echo "Je fietst nu ".$this->snelheid. " km/uur.<br>";
    }
}

$nieuwe_fiets = new Fiets();
$nieuwe_fiets->kleur = "rood";
$nieuwe_fiets->hoogte = "120";

//Voila, je hebt een nieuwe fiets!
````

Je maakt een fiets-object door eerst een 'class' te definiëren. Zo kun je meerdere fietsen maken die dezelfde functionaliteit hebben, maar wel een andere kleur of hoogte.
Je kunt kijken hoe snel de fiets gaat:

````php
$nieuwe_fiets->snelheidWeergeven();
````
De fiets gaat in eerste instantie 0 km/per uur.
Hieronder wordt er voor gezorgd dat de fiets sneller gaat rijden. Eerst wordt de methode rijden() gemaakt...
````php
function rijden($km_per_uur) {
    //$km_per_uur wordt opgetelt bij de snelheid
    $this->snelheid += $km_per_uur;
}
````
De snelheid wordt aangepast met de methode 'rijden()', daarna wordt de snelheid opnieuw weergegeven...
````php
$nieuwe_fiets->rijden(34);
$nieuwe_fiets->snelheidWeergeven();
//Output: Je fietst nu 34 km/uur.
````
De methode om te remmen werkt precies andersom....
````php
function remmen($km_per_uur) {
    //$km_per_uur wordt afgetrokken van de snelheid
    if($this->snelheid > $km_per_uur) {
        $this->snelheid -= $km_per_uur;
    } else {
        $this->snelheid = 0;
    }
}

````
en dan...
````php
$nieuwe_fiets->remmen(4);
$nieuwe_fiets->snelheidWeergeven();
//Output: Je fietst nu 30 km/uur.
````

## This
Je ziet dat er geregeld wordt verwezen naar $this->snelheid. Het key-word $this verwijst naar het object zelf. Naar variabelen die in de klasse worden gedeclareerd kun je refereren door $this te gebruiken.


##  Opdracht voor garagebedrijf MrWheely
Voor autobedrijf 'Mr. Wheely' moet een app worden gebouwd waarmee je het aanbod aan occasions op een website kunt bekijken.
* Maak een php-bestand met de naam 'Auto.php'.
* Maak in Auto.php een class Auto.
* Een Auto heeft de volgende eigenschappen:
    * string Merk
    * string Type
    * string Kleur
    * int Prijs
* Een Auto heeft de volgende methodes:
    * Een constructor die 4 variabelen accepteert voor merk, type, kleur en prijs. <code>__constructor($merk, $type, $kleur, $prijs)</code>
    * In de constructor worden de klasse-variabelen geïnitialiseerd.
    * Getter-methodes om de verschillende eigenschappen op te vragen van een auto. (zoals <code>getPrijs()</code>)
* Maak een php-bestand met de naam 'AutoOverzicht.php'
* Maak in AutoOverzicht.php een class AutoOverzicht
* Een AutoOverzicht heeft de volgende eigenschappen:
    * array Autos
* Een AutoOverizcht heeft de methodes
    * <code>addAuto()</code>
    * <code>getAutoos()</code>

Gebruik onderstaande code om een aantal auto's toe te voegen aan een AutoOverzicht.

```php
$ao->add(new Auto("BMW", "316", "rood", 27500);
$ao->add(new Auto("Audi", "A8", "blauw", 37000);
$ao->add(new Auto("Mercedes", "C200", "grijs", 41000);
$ao->add(new Auto("Ford", "Mondeo", "zwart", 18700);
$ao->add(new Auto("Ford", "Focus", "paars", 14300);
$ao->add(new Auto("Volkswagen", "Tiguan", "groen", 22500);
```
Voeg nieuwe methoden toe aan de AutoOverzicht-class en/of aan de Auto-class om de onderstaande functionaliteit te realiseren.

[Zie hier een voorbeeld van de website van 'Mr Wheely'](/_assets/oop/wheely/index.php)

## Uitleg en videoplaylist
{% video "videoseries?list=PLBtXOV0WuE_FyhyCJ3KZCprpzAaexwEnr" %}