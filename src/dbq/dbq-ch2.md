---
title: Installeren
date: 2022-04-02
---

# {{ course-title }}

## {{ title }}

## Installatie

{% video "4N58313hftA" %}

Een database bevat gegevens die voor een langere periode bewaard dienen te worden. Je kunt gegevens toevoegen, opvragen, wijzigen en/of verwijderen. SQL (Structured Query Language) is een taal waarmee je een database opdrachten kunt geven.

Om een database te kunnen gebruiken heb je een databasemanagementsysteem (DBMS) nodig. Dat is software waarmee een of meer databases gedefinieerd en onderhouden kunnen worden. Voorbeelden van DBMS-en zijn IBM DB2, Oracle en MySQL. Een computer waarop zo’n DBMS draait, wordt een databaseserver genoemd. 

## Installatie MariaDB
In deze cursus gebruiken we het DBMS MariaDB. Dat is databasesoftware die op bijna elke computer kan draaien en gratis en legaal gedownload kan worden. Omdat je voor de cursus PHP gebruik gaat maken van een zogenaamde AMP-stack (een stuk software waarin Apache, MySQL of MariaDB en PHP gebundeld zitten) kun je voor deze SQL cursus het beste die AMP-stack al installeren.
In de uitleg bij deze cursus gaan we er van uit dat je de [XAMPP](https://www.apachefriends.org/download.html) stack hebt geïnstalleerd.

In het control-panel van XAMPP kun je de MySQL of MariaDB server starten.
Vanuit hetzelfde control-panel kun je ook een terminal starten met de knop 'shell'
In deze 'shell' kun je nu een verbinding opzetten met de MariaDB databaseserver

````sql
# mysql -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 112
Server version: 10.4.21-MariaDB-log mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]>
````

<video-element video="GbBBJPf_QyM"></video-element>


## Cursus bestanden
Tijdens de cursus maken we gebruik van een database met de naam <code>school</code>  
Je kunt de database hier downloaden.... [School database](/_assets/dbq/school.sql)  
Als je op bovenstaande link klikt, wordt het bestand 'school.sql' in je downloadmap geplaatst.
Ga naar de 'shell' waarin de MariaDB client draait en toets het volgende commando in...
````sql
MariaDB > source C:\Users\<jouw accountnaam>\Downloads\
school.sql
````
Als alles goed is gegaan heb je nu een database geïnstalleerd! Je kunt dit controleren met:
````sql
MariaDB [(none)]> use school;
Database changed
MariaDB [school]> show tables;
+------------------+
| Tables_in_school |
+------------------+
| c_regel          |
| cursist          |
| cursus           |
| docent           |
+------------------+
4 rows in set (0.010 sec)

````

Zoals je ziet heb je nu een database met 4 tabellen!
> #### Recap
> Je hebt een databaseserver geïnstalleerd door XAMPP te installeren. In XAMPP zitten verschillende servers en 1 daarvan is de MariaDB databaseserver.  
> Je het een database geïnstalleerd. Het bestand school.sql bevat een sql-script dat een database aanmaakt in je database-server.  
> Je hebt hebt een overzicht gezien van de tabellen in de database school. Met de opdrachten 'use school' en 'show tables' heb je de tabellen opgevraagd in de database school.

## Hulp, hij doet het niet meer!
Het kan zijn dat MySQL niet meer werkt, doordat 1 van de tabellen beschadigd raakt. Dit kan komen doordat je laptop in sluimerstand gaat.
Hieronder het stappenplan om je installatie weer aan de praat te krijgen:
* **Stap 1**: 
    * Verwijder in  C:\xampp\mysql\data\aria_log.00000001 en aria_log_control

* **Stap 2**:
    * In de xampp control panel klik op [Config] en dan [my.ini] op de mysql regel.  
    * Voeg onder [mysqld] de regel toe: `skip-grant-tables`

* **Stap 3**:
    * restart nu Mysql ( [Start] in xampp control panel).

* **stap 4**:    
    * voer op de commandline (CMD.exe) uit:
    * `mysqlcheck -u root -p --auto-repair --check --all-databases`
      
* **Stap 5**:
    * Verwijder weer de `skip-grant-tables` regel uit stap 2 

* **Stap 6**:
    * restart nu opnieuw op Mysql ( [Start] in xampp control panel).

