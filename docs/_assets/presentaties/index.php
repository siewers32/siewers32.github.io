<!DOCTYPE html>
<html>

<head>
    <title>Presentatie</title>
    <meta charset="utf-8">
    <link rel="shortcut icon" type="image/png" href="assets/edutorial-icon-48.png">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu+Mono:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    
<style>

    /* Fonts */

    @import url('https://fonts.googleapis.com/css2?family=Azeret+Mono:wght@300;700&family=Merriweather+Sans:wght@400;700&display=swap');

    /* Variables */

    :root {
        --text: #343469;
        --link: #cf6c00;
        --heading: #f58220;
        --background: #f6f6f6;
        --container-background: #bfbfbf;
        --lineheight: 2.2rem;
        --fontfamily: 'Helvetica Neue', 'Arial', sans-serif;
        --fontsize: 24px;
        --codefont: 'Azeret Mono', monospace;
    }

    /* For 4:3 provide size: 908px 681px;. */


    body {
        font-family: var(--fontfamily);
        font-weight: 400;
        color: var(--text);
        line-height: var(--lineheight);
    }

    h1, h2, h3 {
        font-weight: 700;
        color: var(--heading);
    }

    h1 {
        line-height: calc(var(--lineheight) * 1.7);
    }

    h2 {
        line-height: calc(var(--lineheight) * 1.3);
    }

    .remark-code, .remark-inline-code {
        font-family: 'Ubuntu Mono', monospace;
    }

    .remark-slide-content {
        background-color: var(--background);
        background-image: linear-gradient(#fff, #f0f0f0);
    }

    a {
        color: var(--heading);
        text-decoration: none;
    }

    .remark-slide-number {
        bottom: 12px;
        opacity: 1;
        position: absolute;
        left: 3%;
        text-align: left;
        color: var(--text);
    }

    .remark-slide-number::after {
        content: '|';
        opacity: 1;
        margin-left: 12px;
        color: var(--heading);
        font-weight: 700;
    }

    .remark-slide-content::before {
        content: '';
        position: absolute;
        top: auto;
        bottom: 0;
        left: 0;
        width: 100%;
        height: 50px;
        background-color: #ffffff;
        background-image: url('assets/logo.svg');
        background-repeat: no-repeat;
        background-position: 97%;
    }

    div.breaking_news {
        position:absolute;
        top:0;
        left:0;
        width:100%;
        height:50px;
        background-color:#1d1d67;
    }

    div.breaking_news > img {
        display:block;
        position:absolute;
        top:40%;
        right:10px;
        width:300px;
    }

    div.breaking_news_frontpage {
        position:absolute;
        left:0;
        top:0;
        width:100%;
        height:100%;
        background-color:#1d1d67;
    }

    div.breaking_news_frontpage > img {
        display:block;
        position:absolute;
        top:40%;
        left:5%;
    }

</style>
</head>

<body>
    <!-- Navigation -->
    <div class="styles">
            </div>
    <a href="index.php?tpl=deltion" class="index">
        <div></div>
    </a>

    <textarea id="source">
    # Python scripting
#### Todo
* Je hebt een werkende python 3.8 of hoger geïnstalleerd
* Je hebt een geschikte editor geïnstalleerd.
* Projectopdrachten op github
* Stembus project
---
# Python scripting
#### Wanneer
* Maandag 15 april - geen les (zie rooster)
* Donderdag 18 april - geen les (zie rooster)
* Maandag 22 april - vragenuurtje
* Donderdag 25 april online opleveren en bespreken!
  
---

# Python scripting
#### Wat kun je laten zien:
* Je kan verschillende typen variabelen benoemen en toepassen
* Je kan tekstfuncties toepassen
* Je kan teksten combineren
* Je kan omgaan met speciale karakters in teksten
* Je kunt berekeningen maken met integers en floats

---

# Python scripting
### Berekeningen en operators
* Je kunt verschillende operators toepassen bij berekeningen
* Standaard operators (*, +. -, /)
* Delen met integers (//)
* Machtsverheffen (**)
* Operator prioriteit

---

# Python scripting
### Lists
* Je kan lists maken
* Je kan lists op verschillende manieren aanpassen
* Je kan elementen van een list in een list weergeven
* Je kan elementen van een dictionary in een list weergeven

---
# Python scripting
### Input functies

* Je kan de input van een gebruiker opslaan in een variabele
* Je kunt de input van een gebruiker omzetten in een geschikt type variabele
* Je kunt gebruik maken van loops om code te herhalen
* Je kan bewerkingen uitvoeren op de elementen in een list doormiddel van een loop
* Je kunt een kopie maken van een list
* Je kunt een gedeelte van de elementen van een list kopiëren.

---
# Python scripting
### Loops en condities
* Je kunt met behulp van condities bepalen wat een programma moet doen of juist niet moet doen
* Je kunt condities combineren met loops
---
# Python scripting
### Werken met tekstbestanden
* Je kunt met python tekstbestanden lezen
* Je kunt tekstbestanden maken en aanpassen

---
# Python scripting
### Functions en modules
* Je kan code die je hergebruikt opslaan in een functie
* Je kunt code die je hergebruikt opslaan in modules
* Je kunt gebruik maken van modules van andere ontwikkelaars.
* Je kunt gebruik maken van de Python Package Index (PyPi.org)
</textarea>
    <script src="https://remarkjs.com/downloads/remark-latest.min.js"></script>
    <script>
        var slideshow = remark.create({
            highlightLanguage: 'default',
            highlightStyle: 'default',
        });
    </script>
</body>

</html>