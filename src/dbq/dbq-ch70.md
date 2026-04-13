---
title: Permissies
date: 2022-04-08
---

# {{ course-title }}

## {{ title }}

In eem database management systeem (DBMS oftewel database-server) moet worden aangegeven wie er toegang heeft tot de data van de gegevens. In een offline situatie is het gebruikelijk om namen en wachtwoorden simpel te houden en vooral alle rechten toe te kennen aan de gebruiker 'root'.

## Backend voor applicaties
Zodra de database gebruikt gaat worden door meer gebruikers moet er op een veilige manier omgegaan worden met permissies. 
Vaak zal een database worden gebruikt als 'backend' voor applicaties. De applicatie moet dan (net als een gebruiker) inloggen op de database om toegang te krijgen tot de gegevens.
In PHP gaat dat zo....
```php
$connection = new PDO('mysql:host=localhost;port=3306;dbname=test', 'gebruiker', 'geheim');
```

## Gebruikers aanmaken
De applicatie heeft toegang nodig m.b.v een naam en een wachtwoord. Gebruik hier een sterke naam en een sterk wachtwoord!  
Afhankelijk van de applicatie moeten we de gebruiker (=applicatie) voldoende rechten geven om de acties te doen die nodig zijn.
NB: In de applicatie wordt geregeld welke gebruikers toegang hebben tot data en acties. 
De applicatie moet minimaal de permissies bieden aan de gebruiker met de meeste rechten in de applicatie.  
Meestal betekent dit dat een applicatie de CRUD acties uit moet kunnen voeren. Een applicatie hoeft over het algemeen geen tabellen aan te kunnen maken of aan te passen, laat staan dat een applicatie zelf databases moet kunnen creëren.
Voor een php-applicatie wordt een gebruiker aangemaakt die CRUD-acties uit kan voeren, maar de database verder niet kan beheren.  
Eerst de gebruiker aanmaken....
```sql
create user 'newuser'@'localhost' identified by 'password';
```
Vervang newuser en password door veilige gegevens. Bijvoorbeeld...
```sql
create user 'fk5fdVr.'@'localhost' identified by 'deksli^kffk()dfk.S_';
```
## Permissies toekennen
De nieuwe gebruiker kan in eerste instantie nog helemaal niets. Hieronder krijgt de nieuwe gebruiker de rechten om records aan te maken, aan te passen en te verwijderen (CRUD).
```sql
grant select, insert, update, delete ON school.* TO 'fk5fdVr.'@'localhost';
```
Wanneer de vers aangemaakte gebruiker inlogt is dit het resultaat wanneer hij een overzicht van de beschikbare databases opvraagt:
```sql
show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| school             |
+--------------------+
```
Er zijn meer databases in de database-server aanwezig, maar daar heeft deze gebruiker geen toegang toe.
Het gaat niet lukken om tabellen aan te passen, aan te maken of te verwijderen. De gebruiker kan alleen records bekijken, toevoegen, aanpassen of verwijderen. Precies dat wat nodig is, is ook mogelijk!

Hieronder een stukje php-code om alle records uit de tabel cursist weer te geven...

## Connectie vanuit applicaties
```php
$dsn = 'mysql:host=localhost;port=3306;dbname=school';
$con = new PDO($dsn, 'fk5fdVr.', 'deksli^kffk()dfk.S_');
$stmt = $con->prepare("select * from cursist");
$stmt->execute();
$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
print_r($result);
```
In python gaat dat zo..
```python
import pymysql.cursors

# Connect to the database
con = pymysql.connect(host='localhost',
                      user='fk5fdVr.',
                      password='deksli^kffk()dfk.S_',
                      database='school',
                      port=3306,
                      charset='utf8mb4',
                      cursorclass=pymysql.cursors.DictCursor)

try:
    with con.cursor() as cur:
        cur.execute('SELECT * FROM cursist')
        rows = cur.fetchall()
        for row in rows:
            print(row)

finally:
    con.close()
```

* [Proefopdrachten examens met python-mysql](https://www.edutorial.nl/python/projectopdrachten/)

* [Hier alles over PDO en PHP op phpdelusions.net](https://phpdelusions.net/pdo)
