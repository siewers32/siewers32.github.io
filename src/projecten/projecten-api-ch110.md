---
title: Poor man's API
date: 2022-09-16
---

# {{ course-title }}

## {{ title }}

## SQL Data
In onderstaand voorbeeld wordt gebruik gemaakt van een MySQL database. Het script kun je gebruiken om een enkele tabel met gebruikers aan te maken. Het doel is om de gebruikers te delen via een API. Maak in een MySQL client een database aan en gebruik het [script](/_assets/projecten/customers.sql) om de een tabel met klanten te genereren. 
In de MySQL client (terminal):
``` sql
mysql> create database poormansapi;
mysql> use poormansapi;
mysql> source C:\customers.sql;
mysql> select * from customers;

+----+------------+-------------+------------------------------+------------------------------+-------------+-------------+--------------+----------------+---------------------+------------+
| id | first_name | last_name   | email                        | address                      | postal_code | city        | country_code | phone          | created_at          | updated_at |
+----+------------+-------------+------------------------------+------------------------------+-------------+-------------+--------------+----------------+---------------------+------------+
|  1 | Leon       | Lauritsen   | fjeremiassen@live.dk         | Borch Have 30                | 9428        | Jerup       | da_DK        | +385415834585  | 2022-08-31 12:29:23 | NULL       |
|  2 | Kim        | Voss        | merete.borup@hotmail.com     | Klarskov Boulevard 4, 6. mf. | 6873        | Låsby       | da_DK        | +37487824395   | 2022-08-31 12:29:23 | NULL       |
|  3 | Elisabeth  | Jeremiassen | johansson.ejgil@hotmail.dk   | Koch Gade 7, 6. sal.         | 2263        | Bredebro    | da_DK        | +3780273439214 | 2022-08-31 12:29:23 | NULL       |
|  4 | Jon        | Svenningsen | jakob.meldgaard@hotmail.com  | Vestergaardgade 4Q, st. mf.  | 2492        | Regstrup    | da_DK        | +351358191177  | 2022-08-31 12:29:23 | NULL       |
+----+------------+-------------+------------------------------+------------------------------+-------------+-------------+--------------+----------------+---------------------+------------+
```

## REST API
Om de klanten vanuit de database te exporteren via JSON kun je PHP gebruiken. In onderstaand voorbeeld is er vanuit gegaan dat je de database kunt benaderen met de gebruiker 'root' en password 'root'.
``` php
<?php
try {
    $user = 'root';
    $pass = 'root';
    $dbh = new PDO('mysql:host=localhost;dbname=poormansapi', $user, $pass);
} catch (PDOException $e) {
    print "Error!: " . $e->getMessage() . "<br/>";
    die();
}

function showCustomers($dbh) {
    $sql = 'SELECT * FROM customers';
    $stmt = $dbh->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
    return json_encode($result);
}

echo showCustomers($dbh);

?>

```
Bewaar de code als <code>api.php</code>.
Er wordt geprobeerd om een databaseconnectie op te zetten met PDO. Let op dat de naam van de database, de username en het password kloppen met je eigen gegevens. Als de connectie niet lukt krijg je een error! (Heb je de database-server wel aangezet?).
Als de connectie wel lukt dan wordt het PDO-object geïnstantieerd en wordt het toegekend aan de variabele <code>$dbh</code>.
Om <code>$dbh</code> binnen de functie <code>showCustomers($dbh)</code> te kunnen gebruiken wordt hij als argument aan de functie meegegeven.
In de functie <code>showCustomers</code> wordt een select-query opgebouwd en uitgevoerd. Met <code>fetchAll()</code> worden alle rijen als een array opgehaald uit de database. <code>PDO::FETCH_ASSOC</code> zorgt ervoor dat de data als een associatieve array wordt opgehaald zodat de waarden uit de database worden gekoppeld aan de veldnamen waar ze bij horen [veldnaam => waarde] zoals <code>['first_name' => 'Jan']</code>.
De associatieve array wordt vervolgens omgezet naar json met de json_encode methode. De functie wordt aangeroepen en het resultaat wordt weergegeven met <code>echo showCustomers($dbh)</code>.

Dit is wat je in je browser krijgt te zien als je de pagina aanroept:

``` javascript
[
  {
    "id": "1",
    "first_name": "Leon",
    "last_name": "Lauritsen",
    "email": "fjeremiassen@live.dk",
    "address": "Borch Have 30",
    "postal_code": "9428",
    "city": "Jerup",
    "country_code": "da_DK",
    "phone": "+385415834585",
    "created_at": "2022-08-31 12:29:23",
    "updated_at": null
  },
  {
    "id": "2",
    "first_name": "Kim",
    "last_name": "Voss",
    "email": "merete.borup@hotmail.com",
    "address": "Klarskov Boulevard 4, 6. mf.",
    "postal_code": "6873",
    "city": "Låsby",
    "country_code": "da_DK",
    "phone": "+37487824395",
    "created_at": "2022-08-31 12:29:23",
    "updated_at": null
  },
  {
    "id": "3",
    "first_name": "Elisabeth",
    "last_name": "Jeremiassen",
    "email": "johansson.ejgil@hotmail.dk",
    "address": "Koch Gade 7, 6. sal.",
    "postal_code": "2263",
    "city": "Bredebro",
    "country_code": "da_DK",
    "phone": "+3780273439214",
    "created_at": "2022-08-31 12:29:23",
    "updated_at": null
  },
  {
    "id": "4",
    "first_name": "Jon",
    "last_name": "Svenningsen",
    "email": "jakob.meldgaard@hotmail.com",
    "address": "Vestergaardgade 4Q, st. mf.",
    "postal_code": "2492",
    "city": "Regstrup",
    "country_code": "da_DK",
    "phone": "+351358191177",
    "created_at": "2022-08-31 12:29:23",
    "updated_at": null
  }
]

```

## Frontend
Je hebt nu een werkende API backend gemaakt. De API kan nu gebruikt worden met een frontend applicatie. Hieronder zie je de stappen hoe je dat kunt doen. In dit geval wordt er gebruik gemaakt van pure javascript! Dat noemen ze ook wel 'vanilla javascript'. Er wordt geen Vue, React of ander javascript-framework gebruikt.  
  
Het begint allemaal met een standaard html5-pagina....

``` html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Poormans API</title>
    <script></script>
        <style>
        #customers div {
            background-color:yellow;
        }
    </style>
</head>
<body>
<div id="customers"></div>
</body>
</html>
```
Bewaar de pagina als <code>index.html</code>.
Wat opvalt is <code><div id="customers"></div></code>. Hier worden straks de gegevens van de klanten weergegeven.
Om de gegevens op te halen is een beetje javascript nodig. Hieronder zie je welke code tussen <code><script></script></code>-tags komt te staan.
Om data op te halen vanaf een url of een bestand gebruik je de methode <code>fetch</code>. In Vue heb je misschien met axios gewerkt. Axios maakt intern ook gebruik van dezelfde <code>fetch</code>-methode:

``` javascript
        fetch('http://localhost/api.php', {mode: 'cors'})
            .then(function(response) {
                return response.json();
            })
            .then(function(data) {
                console.log('Request successful', data);
            })
            .catch(function(error) {
                console.log('Request failed', error)
            });
```
Met fetch haal je een 'promise' op. Normaal gesproken werkt de javascript-code niet van boven naar beneden. Maar nu wil je eerst even wachten tot de data is opgehaald voordat het script verder gaat. Dit kan kan met een 'promise'!
Als alles goed gaat worden bij de eerste <code>.then</code> de gegevens uit de response opgehaald met <code>response.json</code>.
Als dan nog alles goed gaat, worden de gegevens in de variabele <code>data</code> doorgegeven aan de tweede <code>.then</code>. 
Met console.log kun je de verstuurde gegevens in de console van je browser weergegeven.
Lukt het allemaal niet, dan wordt de derde <code>.then</code> aangeroepen.

Als je webserver op poort 80 draait, kun je bovenstaande code uitvoeren door met <code>http://localhost/index.html</code> de html-pagina te openen in je browser. Kijk in de console van de developer-tools of de data wordt weergegeven...

``` html
Request successful 
0: {id: '1', first_name: 'Leon', last_name: 'Lauritsen', email....
1: {id: '2', first_name: 'Kim', last_name: 'Voss', email: '
etc.
```
## Browser
Om de data niet in de console, maar in de html-pagina weer te geven moeten de javascript-objecten omgezet worden in html-elementen. Over het algemeen zijn frameworks als Vue en React hier heel handig in, maar je kunt het ook met 'vanilla javascript' doen.
  
Eerst wordt de tweede <code>.then</code> aangepast van de fetch-promise.
``` javascript
            .then(function(data) {
                console.log('Request successful', data);
                    for (i = 0; i < data.length; i++) {
                        console.log(data[i]);
                        //addElement (data[i]);
                    }
            })
```
De data is een array javascript-objecten die wordt doolopen met een for-loop.
Ieder javascript-object ( = customer) wordt meegegeven als argument in de functie <code>addElement</code>.

Voeg onderstaande functie toe aan de <code>script</code>-tag:

``` javascript
        function addElement(el) {
            // create a new div element
            const newDiv = document.createElement("div");
            const firstName = document.createTextNode(el.first_name + " - ");
            const lastName = document.createTextNode(el.last_name);

            // add the text nodes to the newly created div
            newDiv.appendChild(firstName);
            newDiv.appendChild(lastName);

            // add the newly created element and its content into the DOM
            const currentDiv = document.getElementById("customers");
            currentDiv.appendChild(newDiv);
        }

```
Met de gegevens van iedere klant (customer) wordt nu een nieuw <code>div</code>-element gemaakt.
Er worden twee regels tekst toegevoegd met de voor- en achternaam van iedere klant. Uiteindelijk worden de gegevens toegevoegd aan de <code>div</code> met id 'customers', zoals die in het html-document al was gedefinieerd.

Dit is wat je in je browser te zien krijgt:

<div class=html style="background-color:yellow">
Leon - Lauritsen<br>
Kim - Voss<br>
Elisabeth - Jeremiassen<br>
Jon - Svenningsen<br>
Vilhelm - Brodersen<br>
</div>

Proof of concept voltooid!!