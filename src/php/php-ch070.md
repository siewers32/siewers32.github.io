---
title: Formulieren
date: 2022-04-07
---

# {{ course-title }}

## {{ title }}

{% video "7iKGEmmBnhM" %}
{% video "95D5qUh4a6M" %}


PHP is ideaal om websites dynamisch te maken. Je kan een webapplicatie laten reageren op input van gebruikers. Formulieren zijn hierbij een fantastisch hulpmiddel. Denk bijvoorbeeld aan een inlogscherm of een registratieformulier. Je kunt de pagina's voor gebruikers personaliseren!
Met PHP kun je de input van gebruikers afvangen en verwerken. De basis hiervoor is een formulier:
```html
    <form action="check_credentials.php" method="post">
        <label for="login">Login</label>
        <input type="email" id="login" name="login" required>
        <label for="password">Password</label>
        <input type="password" id="password" name="password" required>
        <input type="submit">
    </form>
```
<div class="html">
    <form action="/_assets/php/check_credentials.php" method="post">
        <label for="login">Login</label>
        <input type="email" id="login" name="login" required>
        <label for="password">Password</label>
        <input type="password" id="password" name="password" required>
        <input type="submit">
    </form>
</div>

Met bovenstaand formulier kun je de inloggegevens van de gebruiker checken. De code hieronder laat de code zien van "check_credentials.php". De pagina wordt aangeroepen als de gebruiker op de submit-button klikt.

```php
<h3>Dit zijn de gegevens uit het formulier</h3>
<ul>
    <li>Login: <?php echo $_POST['login']; ?></li>
    <li>password: <?php echo $_POST['password']; ?></li>
</ul>
```
Gegevens uit een formulier die met de methode 'POST' zijn verstuurd, worden door PHP opgevangen in $_POST.
$_POST is een associatieve array die door PHP wordt beheerd. In een associatieve array worden alle gegevens gelabeled. Het label wordt overgenomen uit de 'name' van het formulier. 

```html
<input type="text" name="broodje_kaas" id="test">
```
De ingevoerde waarde in het tekstveld kun je opvragen en weergeven met:
```php
<?php
    echo $_POST['broodje_kaas'];
?>
```
Door condities toe te passen kun je ervoor zorgen dat je op basis van gebruikersinput de content van je applicatie aanpast.
Bijvoorbeeld door de naam en het wachtwoorde te controleren...
```php
<?php
    if($_POST['username'] == "admin" && $_POST['password'] == "1234") {
        echo "Hey administratoortje. Lekker bezig!";
     } else {
        echo "No way administrator-wannabee, geen toegang voor jou!"
     }
     
     //Merk op dat bovenstaande code leuk is om te testen, maar in productie niet gebruikt kan worden!
     //Don't try this at home, deze code is absoluut niet veilig!!
?>
```