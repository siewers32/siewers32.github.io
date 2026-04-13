---
title: Normaliseren
date: 2022-04-07
---

# {{ course-title }}

## {{ title }}
### Wat is het
Normaliseren is het proces waarbij je een relationeel model ontwerpt. Je bepaalt welke gegevens worden opgeslagen, welke sleutels nodig zijn en hoe relaties tussen de verschillende tabellen worden gelegd.

## Normaliseren
* Inventariseer welke gegevens worden opgeslagen
  * Wel elementaire gegevens opslaan
  * Geen procesgegevens. Dit zijn gegevens die je kunt berekenen. Bijvoorbeeld de totaalprijs van een bestelling
  * Geen vaste gegevens. Dit zijn gegevens die niet veranderen. Bijvoorbeeld de naam 'Wehkamp' voor de database achter de website van 'Wehkamp'.
* Bepaal welke gegevens een relatie met elkaar hebben
  * Welke gegevens horen bij elkaar. Bijvoorbeeld persoonsgegevens zoals voornaam, achternaam, adres. Deze gegevens horen bij 1 persoon.
  * Geef een groep gegevens een sleutel
  * Welke gegevens hebben een relatie met elkaar en wat voor relatie is dat dan. Een-op-meer of meer-op-meer.

## Een voorbeeld
Een winkel in sportartikelen gaat een webshop beginnen. Welke gegevens zijn nodig om producten weer te geven en klanten bestellingen te laten doen.

**Klanten**  
<u style="text-decoration-style:double;">id</u>, voornaam, tussenvoegsel, achternaam, email, telefoon

**Producten**  
<u style="text-decoration-style:double;">id</u>, leverancier, omschrijving, prijs

**Bestelling**  
<u style="text-decoration-style:double;">id</u>, <u>klant-id</u>, datum

**Bestelregel**  
<u style="text-decoration-style:double;">bestelling_id</u>, <u style="text-decoration-style:double;">product_id</u>, aantal

## Normaalvormen
Download hier het [voorbeeld van een orderformulier van sportpaleis 'Snel, dat wel'](/_assets/dbo/normaliseren_voorbeeld.pdf)

#### 0e normaalvorm
* Bepaal welke gegevens opgeslagen moeten worden in de database:
  * Elementaire gegevens opslaan
  * Berekende gegevens niet opslaan
  * Vaste gegevens niet opslaan. 
* Geef de groep een sleutel

<div class="html">
  <div style="width:100%;display:flex;justify-content: space-between;gap:20px">
    <div style="padding:10px;min-height:100px;flex-grow:1;background-color: white">
      Ordernummer<br>
      Orderdatum<br>
      Klantnummer<br>
      Klantnaam<br>
      Adres<br>
      Plaats<br>
      Artikelnummer<br>
      Artikel<br>
      Prijs<br>
      Aantal<br>
      Totaalprijs<br>
    </div>
    <div style="padding:10px;min-height:100px;flex-grow:1;background-color: white">
      <b>0e normaalvorm</b><br>
      <u>Ordernummer</u><br>
      Orderdatum<br>
      Klantnummer<br>
      Klantnaam<br>
      Adres<br>
      Plaats<br>
      Artikelnummer<br>
      Artikel<br>
      Prijs<br>
      Aantal<br>
    </div>
  </div>
</div>

#### 1e normaalvorm
* Verzamel repeterende groepen en verwijder ze uit de oorspronkelijke groep
* Voeg de sleutel uit de oorspronkelijke groep toe aan de nieuwe groepen
* Geef de nieuwe groepen een sleutel

<div class="html">
  <div style="width:100%;display:flex;justify-content: space-between;gap:20px">
    <div style="padding:10px;min-height:100px;flex-grow:1;background-color: white">
      <b>0e normaalvorm</b><br>
      <u>Ordernummer</u><br>
      Orderdatum<br>
      Klantnummer<br>
      Klantnaam<br>
      Adres<br>
      Plaats<br>
      Artikelnummer<br>
      Artikel<br>
      Prijs<br>
      Aantal<br>
    </div>
    <div style="padding:10px;min-height:100px;flex-grow:1;background-color: white">
      <b>1e normaalvorm</b><br>
      <u>Ordernummer</u><br>
      Orderdatum<br>
      Klantnummer<br>
      Klantnaam<br>
      Adres<br>
      Plaats<br>
      <br>
      <u>Ordernummer</u><br>
      <u>Artikelnummer</u><br>
      Artikel<br>
      Prijs<br>
      Aantal<br>
    </div>
  </div>
</div>

#### 2e Normaalvorm
* Plaats de attributen die functioneel afhankelijk zijn van slechts een deel van de sleutel in een nieuwe groep samen met het attribuut waarvan zij wel functioneel afhankelijk zijn.
* Geef de nieuwe groep een sleutel.

<div class="html">
  <div style="width:100%;display:flex;justify-content: space-between;gap:20px">
    <div style="padding:10px;min-height:100px;flex-grow:1;background-color: white">
      <b>1e normaalvorm</b><br>
      <u>Ordernummer</u><br>
      Orderdatum<br>
      Klantnummer<br>
      Klantnaam<br>
      Adres<br>
      Plaats<br>
      <br>
      <u>Ordernummer</u><br>
      <u>Artikelnummer</u><br>
      Artikel<br>
      Prijs<br>
      Aantal<br>
    </div>
    <div style="padding:10px;min-height:100px;flex-grow:1;background-color: white">
      <b>2e normaalvorm</b><br>
      <u>Ordernummer</u><br>
      Orderdatum<br>
      Klantnummer<br>
      Klantnaam<br>
      Adres<br>
      Plaats<br>
      <br>
      <u>Ordernummer</u><br>
      <u>Artikelnummer</u><br>
      Aantal<br>
      <br>
      <u>Artikelnummer</u><br>
      Artikel<br>
      Prijs<br>
    </div>
  </div>
</div>

#### 3e Normaalvorm
* Plaats alle attributen die functioneel afhankelijk zijn van niet sleutelvelden in een nieuwe groep, samen met het attribuut waar ze van afhankelijk zijn.
* Geef deze nieuwe groep een sleutel
* Verwijder al deze attributen uit de oorspronkelijke groep, behalve het attribuut waar ze van afhankelijk zijn.

<div class="html">
  <div style="width:100%;display:flex;justify-content: space-between;gap:20px">
    <div style="padding:10px;min-height:100px;flex-grow:1;background-color: white">
      <b>2e normaalvorm</b><br>
      <u>Ordernummer</u><br>
      Orderdatum<br>
      Klantnummer<br>
      Klantnaam<br>
      Adres<br>
      Plaats<br>
      <br>
      <u>Ordernummer</u><br>
      <u>Artikelnummer</u><br>
      Aantal<br>
      <br>
      <u>Artikelnummer</u><br>
      Artikel<br>
      Prijs<br>
    </div>
    <div style="padding:10px;min-height:100px;flex-grow:1;background-color: white">
      <b>3e normaalvorm</b><br>
      <u>Ordernummer</u><br>
      Orderdatum<br>
      <u style="text-decoration-style: dashed">Klantnummer</u><br>
      <br>
      <u style="text-decoration-style: double">Ordernummer</u><br>
      <u style="text-decoration-style: double">Artikelnummer</u><br>
      Aantal<br>
      <br>
      <u>Artikelnummer</u><br>
      Artikel<br>
      Prijs<br>
      <br>
      <u>Klantnummer</u><br>
      Klantnaam<br>
      Adres<br>
      Plaats<br>
    </div>
  </div>
</div>