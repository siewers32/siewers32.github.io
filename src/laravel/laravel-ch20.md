---
title: Installatie
date: 2023-06-02
---

# {{ course-title }}

## {{ title }}

### Installatie met composer
In de documentatie van Laravel worden grofweg 2 manieren beschreven waarop je Laravel kunt installeren. De methode om Laravel met Docker te installeren is vooral handig als je de docker-image ook daadwerkelijk in een productie-omgeving gaat gebruiken. (Bijvoorbeeld op AWS of Google Cloud).
Tijdens testen en ontwikkelen kun je ook gebruik maken van composer en een installatie van php op je localhost. Het is wel belangrijk dat je dan php hebt toegevoegd aan de [path environment variable van je windows installatie](https://dinocajic.medium.com/add-xampp-php-to-environment-variables-in-windows-10-af20a765b0ce) of aan de [PATH variabele van je linux of mac-systeem](https://support.apple.com/nl-nl/guide/terminal/apd382cc5fa-4f58-4449-b20a-41c53c006f8f/mac).
Op dezelfde manier kun je er voor zorgen dat je composer overal op je [mac](https://www.chriscollins.me/notes/install-composer-globally-on-mac-os/) kunt starten. Als je de installer gebruikt voor composer op windows, dan wordt automatisch de path-variabele ingesteld.

Alles over installatie vind je natuurlijk op de [site van Laravel](https://laravel.com/docs/12.x/installation)

### Voorbeeld installatie van een movie-app
```php
//Installeer in de directory waar je je projecten wilt bewaren
composer create-project laravel/laravel movie-app
```



{% video "videoseries?list=PLBtXOV0WuE_EB7ZT2vHpCy9imqjq5aLvl" %}
{% video "MYyJ4PuL4pY" %}
