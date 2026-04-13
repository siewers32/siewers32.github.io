---
title: Interfaces
date: 2022-04-08
---

# {{ course-title }}

## {{ title }}

Om code te kunnen hergebruiken moet het flexibel zijn en onafhankelijk. In dit hoofdstuk worden 2 manieren besproken om dat te bereiken. 

## Abstract classes
Abstract classes zijn classes die eigenlijk nog niet helemaal af zijn. Ze zijn nog niet zo specifiek. Het voorbeeld van de Koe zouden we kunnen gebruiken als een abstract class. Een abstract class kun je niet zo gebruiken. Je moet een sub-class (bijv. LakenVel in het voorbeeld) maken die je wel rechtstreeks kunt gebruiken.

Je kunt een 'extended' (=subklasse) class maken van onderstaande 'class Koe'. In de extended class moet je opnieuw de kleur en het voer instellen. Je kunt de class Koe dus niet rechtstreeks gebruiken, maar wel via een extended class zoals bijv. LakenVel...

````php
abstract class Koe
{
    public int $aantal_poten;
    public string $kleur;
    public string $voer;

    public function __construct()
    {
        $this->aantal_poten = 4;
    }
    
    abstract function doeIets();
  

    public function asText() {
        echo 'Ik ben een koe met '.$this->aantal_poten. ' poten,  ik ben grotendeels '.$this->kleur.' en ik lust graag '.$this->voer."<br>";
    }
}

````
```php
// Dit kan dus niet...

$koe = new Koe();

// Je krijgt dan deze error
// Uncaught Error: Cannot instantiate abstract class Koe

```
Hier de extended class LakenVel
````php
class LakenVel extends Koe
{
        public function __construct() {
        parent::__construct();
        $this->kleur = 'zwart met wit';
        $this->voer = 'gras';
    }
    
    function doeIets()
    {
        echo 'Doe iets anders';
    }
}

// Dit kan wel want je kunt wel een subklasse van een abstract class instantiëren.
$koe = new LakenVel();
````

## Interfaces
Een interface lijkt op een abstracte klasse, maar bij een interface zijn de methoden nog niet geïmplementeerd, alleen de signatuur van de methode is aanwezig. Er is nog geen code om uit te voeren!  
Aan de signatuur kun je zien wat de naam is van de functie. Je ziet welke argumenten moeten worden meegestuurd en je ziet of een methode een return-waarde heeft.  
Een interface werkt als een soort contract. Een interface bepaalt welke methoden en eigenschappen geïmplementeerd moeten worden in een klasse. Vanaf PHP 7.4 kun je het type van variabelen aanduiden. Hierdoor heb je nog meer controle over het 'contract'.
Hier de interface van een Koe! De interface wordt gebruikt in de klasse Koe!. Dat betekent dat alle methoden en eigenschappen uit de interface geïmplementeerd moeten worden (er moet code voor geschreven worden).
Hier een interface voor Koe:
````php
interface Koe
{
    public function getAantal_poten():int;
    public function setAantal_poten($aantal_poten):void;
    public function setVoer($voer):void;
    public function getVoer():string;
    public function asText():void;
}
````
De lakenvel implementeert de interface van Koe. In de class LakenVel worden de methoden voorzien van code. Iedere afgeleide van koe moet deze methoden implementeren. Zo weet je zeker dat alle classes die van Koe zijn afgeleid dezelfde functionaliteit en eigenschappen hebben.
````php
class LakenVel implements Koe
{
    protected string $voer;
    protected int $aantal_poten;

    public function getAantal_poten():int {
        return $this->aantal_poten;
    }
    public function setAantal_poten($aantal_poten):void{
        $this->aantal_poten = $aantal_poten;
    }
    public function setVoer($voer):void{
        $this->voer = $voer;
    }
    public function getVoer():string{
        return $this->voer;
    }
    public function asText():void{
        echo 'Ik ben een koe met '.$this->aantal_poten. ' poten en ik lust graag '.$this->voer."<br>";
    }
 }

$koe = new LakenVel();
$koe->setAantal_poten(4);
$koe->setVoer('bix en gras');
$koe->asText();
````