---
title: Hoe werkt een database
date: 2022-04-03
---

<style>
    .block, .criteria {
        display:inline-block;
        width:30px;
        height:30px;
        vertical-align:middle;
        text-align:center;
        border:1px solid black;
        padding: 3px;
    }
    .criteria {
        border:none;
        width:100px;
    }
    .red {
        background-color:indianred;
    }
    .green {
        background-color:#005E7A;
        color:white;
    }
    .reeks {
        margin-bottom:10px;
    }
</style>



# {{ course-title }}

## {{ title }}

### Snel zoeken en filteren
Databases zijn vooral zo handig omdat je er razendsnel in kunt zoeken en data kunt filteren. Toch geldt voor databases ook 'garbage in, garbage out'. M.a.w. je moet zorgvuldig omgaan met je data.
* Sla alleen gegevens op die je ook 'echt' nodig hebt.
* Bedenk een goede structuur om je gegevens in op te slaan.

### Snel zoeken
Databases kunnen snel zoeken in gegevens omdat ze slimme manieren (algoritmen) hebben om gegevens met elkaar te vergelijken. 
De meest eenvoudig manier van zoeken is 'linear search'. Bij deze methode ga je door alle gegevens heen, totdat je een match hebt. Het maakt niet uit of de gegevens op volgorde staan.
In onderstaand voorbeeld zie je een reeks willekeurige getallen. Als je op zoek gaat naar het getal 12 dan heb je dat met een 'linear search' in 4 stappen gevonden.
Om 29 te vinden zijn er 11 stappen nodig. Met deze methode moet je een beetje mazzel hebben dat hetgeen je zoekt vooraan in de zoekreeks is te vinden!

**Linear search**
<div class="html">
    <div class="reeks">
        <div class="block green">2</div>
        <div class="block green">3</div>
        <div class="block green">6</div>
        <div class="block green">12</div>
        <div class="block">14</div>
        <div class="block">17</div>
        <div class="block">19</div>
        <div class="block">21</div>
        <div class="block">22</div>
        <div class="block">27</div>
        <div class="block">28</div>
        <div class="block">29</div>
        <div class="block">30</div>
        <div class="block">40</div>
        <div class="block">47</div>
        <div class="block">48</div>
        <div class="block">52</div>
        <div class="criteria">12 == 12</div>
    </div>
</div>
<div class="html">
    <div class="reeks">
        <div class="block green">2</div>
        <div class="block green">3</div>
        <div class="block green">6</div>
        <div class="block green">12</div>
        <div class="block green">14</div>
        <div class="block green">17</div>
        <div class="block green">19</div>
        <div class="block green">21</div>
        <div class="block green">22</div>
        <div class="block green">27</div>
        <div class="block green">28</div>
        <div class="block green">29</div>
        <div class="block">30</div>
        <div class="block">40</div>
        <div class="block">47</div>
        <div class="block">48</div>
        <div class="block">52</div>
        <div class="criteria">29 == 29</div>
    </div>
</div>
Linear zoeken gaat in dit geval in 11 stappen!

### Binary search
Bij 'binary search' start de zoektocht in het midden van de getallenreeks. Als de gevonden waarde lager is dan het getal dat wordt gezocht, dan worden alle lagere getallen genegeerd en wordt opnieuw het midden opgezocht van de resterende getallen. 
Deze stap wordt net zolang herhaald totdat het getal gevonden wordt.

#### Op zoek naar index 12...
<div class="html">
    <div class="reeks">
        <div class="block">2</div>
        <div class="block">3</div>
        <div class="block">6</div>
        <div class="block">12</div>
        <div class="block">14</div>
        <div class="block">17</div>
        <div class="block">19</div>
        <div class="block">21</div>
        <div class="block green">22</div>
        <div class="block">27</div>
        <div class="block">28</div>
        <div class="block">29</div>
        <div class="block">30</div>
        <div class="block">40</div>
        <div class="block">47</div>
        <div class="block">48</div>
        <div class="block">52</div>
        <div class="criteria">12 <= 22</div>
    </div>
    <div class="reeks">
        <div class="block">2</div>
        <div class="block">3</div>
        <div class="block">6</div>
        <div class="block">12</div>
        <div class="block green">14</div>
        <div class="block">17</div>
        <div class="block">19</div>
        <div class="block">21</div>
        <div class="block">22</div>
        <div class="criteria">12 <= 14</div>
    </div>
    <div class="reeks">
        <div class="block">2</div>
        <div class="block">3</div>
        <div class="block green">6</div>
        <div class="block">12</div>
        <div class="block">14</div>
        <div class="criteria">12 > 6</div>
    </div>
    <div class="reeks">
        <div class="block green">12</div>
        <div class="block">14</div>
        <div class="criteria">12 == 12</div>
    </div>
</div>
Binair zoeken gaat dus in 4 stappen!

#### Op zoek naar index 29...
<div class="html">
    <div class="reeks">
        <div class="block">2</div>
        <div class="block">3</div>
        <div class="block">6</div>
        <div class="block">12</div>
        <div class="block">14</div>
        <div class="block">17</div>
        <div class="block">19</div>
        <div class="block">21</div>
        <div class="block">22</div>
        <div class="block">27</div>
        <div class="block">28</div>
        <div class="block green">29</div>
        <div class="block">30</div>
        <div class="block">40</div>
        <div class="block">47</div>
        <div class="block">48</div>
        <div class="block">52</div>
        <div class="criteria">29 >= 22</div>
    </div>
    <div class="reeks">
        <div class="block">22</div>
        <div class="block">27</div>
        <div class="block">28</div>
        <div class="block green">29</div>
        <div class="block">30</div>
        <div class="block">40</div>
        <div class="block">47</div>
        <div class="block">48</div>
        <div class="block">52</div>
        <div class="criteria">30 >= 29</div>
    </div>
    <div class="reeks">
        <div class="block">22</div>
        <div class="block">27</div>
        <div class="block green">28</div>
        <div class="block">29</div>
        <div class="block">30</div>
        <div class="criteria">28 <= 29</div>
    </div>
    <div class="reeks">
        <div class="block">28</div>
        <div class="block green">29</div>
        <div class="criteria">29 == 29</div>
    </div>
</div>
Binair zoeken gaat weer in 4 stappen!

### Online testen
Je kunt [de vergelijkig tussen binair en linaer zoeken online](/_assets/dbo/search/index.php?records=286) doen!
 