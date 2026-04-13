---
title: Werken met bestanden
date: 2022-04-04
---

# {{ course-title }}

## {{ title }}

In php kun je de inhoud van een bestand toevoegen aan de inhoud van een ander bestand.  
Dit is vooral handig als je dezelfde code op verschillende plaatsen in je applicatie wilt gebruiken.
Een databaseconnectie wil je vaak op meerdere pagina's gebruiken. Om te voorkomen dat je op meerdere plekken in je applicatie de gegevens voor je server en gebruiker opnieuw in moet typen, kun je gebruik maken van een include:

```php
//Databaseconnectie in bestand db.php
$dbc = new PDO('mysql:hostname=localhost;dbname=test', 'root', '');

```

Je kunt met include (of require) het bestand db.php opnemen in een ander bestand:
```php
include('db.php')

// Overzicht met gebruikers (overzicht.php)
$query = $dbc->prepare("select * from user"); 

```
Door include te gebruiken wordt de code uit db.php toegevoegd aan de code in overzicht.php. Hierdoor is ook de variabele $dbc in overzicht.php beschikbaar!  
Include() wordt ook gebruikt om bijv. de layout van een pagina te kunnen hergebruiken:

```html
<!-- layout.html -->
<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="css/stijl.css">
    <title><?= $html['title'] ?></title>
  </head>
    <body>
      <h1><?= $html['heading'] ?></h1>
      <p><?= $html['tekst'] ?></p>
    </body>
</html>
```
```html
Overigens:
<?= $var ?> is hetzelfde als <?php echo $var ?>
```
De pagina in php....

```php
<?php
  $html = array(
    'title' => 'Sportnieuws',
    'heading' => 'Koeman niet bang voor Clásico'
    'text' => 'FC Barcelona-trainer Ronald Koeman leeft niet met angst en beven toe naar de Clásico tegen Real Madrid. Volgens Spaanse media zijn veel supporters van de Spaanse grootmacht pessimistisch over de kansen van het tegenvallende FC Barcelona in de derby met Real, die zondag op het programma staat.'
  );

include('layout.html');
```
Zo kun je dezelfde pagina-layout voor meerdere artikelen gebruiken.



