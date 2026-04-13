---
title: Access Modifiers
date: 2022-04-06
---

# {{ course-title }}

## {{ title }}
Access modifiers geven een manier om gegevens in een object te beschermen. Er zijn 3 mogelijkheden:
* public
  * Een variabele die met de access modifier 'public' is gedeclareerd, kan direct worden aangepast vanuit een applicatie. (geen bescherming)
* protected
  * Protected variabelen kunnen alleen door methoden uit de klasse of door afgeleiden van die klasse worden aangepast.
* private
  * Private variabelen kunnen alleen vanuit de eigen klasse worden aangepast.

Het is gebruikelijk om variabelen die gevoelige gegevens kunnen bevatten af te schermen. In onderstaand voorbeeld, willen we niet dat het bankrekening-saldo direct kan worden aangepast door code in de applicatie. Om fouten te voorkomen wordt het saldo afgeschermd door een methode. De methode controleert of data waarmee het saldo wordt aangepast, voldoet aan een aantal voorwaarden.
In deze code wordt er nog niets gecontroleerd. Wat zou er gebeuren als iemand -1200 probeert toe te voegen aan het saldo?
````php
class Bankrekening {
    private int $saldo;
    private int $max;
    
    public function __construct() {
        $this->saldo = 0;
        $this->max = 1000;
        // Op een nieuwe bankrekening staat 0 euro.
    }
    
    public function getSaldo() {
        return $this->saldo;
    }
    
    public function addSaldo($amount) {
          $this->saldo += $amount;
    }    
}
````
Om te voorkomen dat je het saldo negatief kunt beïnvloeden door juist geld toe te voegen, wordt de methode aangepast.
````php
function addSaldo($amount) {
  if(is_numeric($amount) && $amount >= 0) {
    $this->saldo += $amount
  }
}
````
Je kunt ook voorkomen dat er te grote bedragen in 1 keer worden afgeschreven...
````php

function withdrawSaldo($amount) {
  if(is_numeric($amount) && $amount >= 0 && $amount <= $this->max) {
    $this->saldo -= $amount
  } else {
    echo 'per keer mag er maximaal '.$this->max. ' worden opgenomen'. 
  }
}
````
Het aanpassen van het saldo is nu gebonden aan een aantal strenge regels!

## Opdracht
#### El Credito
El Credito is een bank waar je geld kunt betalen en ontvangen van de rekeninghouders. De applicatie bestaat uit 3 klassen. Bank, Rekeningen en Transacties. Bestudeer de code van de applicatie en breidt deze uit met de volgende functionaliteit:
1. Creëer een nieuwe rekening voor "elvis"
2. De bank betaalt 50 euro aan elvis.
3. Op dit moment kan je ieder gewenst bedrag overmaken aan een andere rekeninghouder. Zorg ervoor dat je niet meer geld kan overmaken dan er op een rekening staat! De bank zelf mag wel rood staan!
4. Je kan nu nog negatieve bedragen aan elkaar overmaken. Zorg ervoor dat dit niet meer kan.

> De voorbeeld applicatie kun je vinden op:  
> [https://github.com/siewers32/el-credito](https://github.com/siewers32/el-credito)