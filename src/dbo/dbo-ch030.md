---
title: Relationeel model
date: 2022-04-06
---

# {{ course-title }}

## {{ title }}

Een relationele database is gebaseerd op een zgn. relationeel model. Door dit model toe te passen zorg je ervoor dat gegevens gestructureerd en genormaliseerd worden opgeslagen. Dit betekent:
* Alleen relevante gegevens worden opgeslagen
* Gegevens worden maar 1 keer opgeslagen (geen redundantie!)
  * Als een klant verhuist, hoef je maar in 1 tabel het adres te wijzigen!
* Gegevens zijn consistent
  * In een bestelsysteem hoort een bestelling altijd bij een klant. Zonder klant kun je geen bestelling hebben. 
* Gegevens zijn betrouwbaar
  * Denk aan je bankrekening. Je hebt liever niet dat anderen jouw geld uitgeven door een probleem in de database.
  

## Sleutels
Tabellen hebben sleutelvelden. Een sleutelveld identificeert een record. De waarde van een sleutel kan maar 1 rij data behoren. Een klantnummer is uniek voor iedere klant. Hierdoor kun je klanten niet door elkaar halen!
* Primaire sleutel (primary key)
  * Deze sleutel is uniek voor ieder record in de tabel
* Vreemde sleutel (foreign key)
  * Deze sleutel is een verwijzing naar de primaire sleutel in een andere tabel. 
* Kandidaatsleutel
  * Deze sleutel is een wel een unieke waarde, maar niet de primaire sleutel. Bijvoorbeeld je emailadres is uniek voor jou, maar je krijgt toch een klantnummer!
* Gecombineerde sleutels
  * Deze sleutels bestaan uit meerdere velden. Individueel zijn de waarden niet uniek, maar als je ze combineert wel!

## Relaties
Door een sleutel uit een tabel in een andere tabel op te nemen creëer je een relatie. 
In onderstaand voorbeeld zie je dat het 'id' van de klant is opgenomen in de tabel orders ('custormer').

Er zijn 2 type relaties:
* 1-op-meer relaties
  * Bestellingen horen bij één klant, maar een klant kan meerdere bestellingen hebben.
* meer-op-meer relaties
  * Bij een film zijn meerdere acteurs betrokken, maar acteurs spelen ook in meerdere films.


## Voorbeelden
#### Tabel klanten
* **id** : dit is de primaire sleutel. Id is een uniek gegeven

<div class="html">
<table style="border: 1px solid #000; border-collapse: collapse;">
    <tr>
        <th>id</th>
        <th>first name</th>
        <th>last name</th>
        <th>phone</th>
        <th>address</th>
        <th>zip</th>
    </tr>
    <tr>
        <td>1234</td>
        <td>Tom</td>
        <td>Jewett</td>
        <td>714-555-1212</td>
        <td>10200 Slater</td>
        <td>92708</td>
    </tr>
    <tr>
        <td>5678</td>
        <td>Alvaro</td>
        <td>Monge</td>
        <td>562-333-4141</td>
        <td>2145 Main</td>
        <td>90840</td>
    </tr>
    <tr>
        <td>9012</td>
        <td>Wayne</td>
        <td>Dick</td>
        <td>562-777-3030</td>
        <td>1250 Bellflower</td>
        <td>90840</td>
    </tr>
</table>
</div>

#### Tabel orders
* **id** : Dit is de primaire sleutel van de tabel orders
* **customer** : Dit is de vreemde sleutel, de waarde komt overeen met het id uit de tabel klanten

<div class="html">
<table style="border: 1px solid #000; border-collapse: collapse;">
    <tr>
        <th>id</th>
        <th>customer</th>
        <th>order-date</th>
        <th>employee</th>
    </tr>
    <tr>
        <td>21</td>
        <td>5678</td>
        <td>2003-07-14</td>
        <td>Patrick</td>
    </tr>
    <tr>
        <td>22</td>
       <td>9012</td>
        <td>2003-07-14</td>
        <td>Patrick</td>
    </tr>
    <tr>
        <td>23</td>
        <td>5678</td>
        <td>2003-07-18</td>
        <td>Kathleen</td>
    </tr>
    <tr>
        <td>24</td>
        <td>5678</td>
        <td>2003-07-20</td>
        <td>Kathleen</td>
    </tr>
</table>
</div>