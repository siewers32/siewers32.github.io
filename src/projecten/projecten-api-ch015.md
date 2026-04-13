---
title: Userstories
date: 2025-03-06
---
# {{ course-title }}

## {{ title }}

#### Wat is een user story?
Een user story is een korte, eenvoudige beschrijving van een functie of behoefte, gezien vanuit het perspectief van de eindgebruiker. Het helpt teams te begrijpen wat er moet worden ontwikkeld en waarom. Een typische user story wordt geformuleerd als:

> *Als [type gebruiker] wil ik [doel of actie] zodat [reden of voordeel].*

Bijvoorbeeld:
> *Als student wil ik mijn opdrachten kunnen inleveren via een online portal zodat ik feedback kan krijgen van mijn docent.*

#### Waarom gebruik je user stories?
1. **Gebruikersgericht werken** – Het dwingt ontwikkelaars om zich te focussen op de echte behoeften van gebruikers.
2. **Communicatie verbeteren** – Teams (ontwikkelaars, product owners, stakeholders) kunnen sneller afstemmen.
3. **Flexibiliteit** – User stories zijn makkelijk aanpasbaar bij veranderende behoeften.
4. **Beter testen en accepteren** – Ze helpen bij het opstellen van acceptatiecriteria, die gebruikt kunnen worden voor testen.

---

## Testen

Om te testen of je code voldoet aan een user story, doorloop je de volgende stappen:

#### Definieer acceptatiecriteria
Bij elke user story horen **acceptatiecriteria**. Dit zijn concrete voorwaarden waaraan de implementatie moet voldoen.

Voorbeeld acceptatiecriteria voor bovenstaande user story:
- De student kan succesvol een bestand uploaden via het portal.
- De docent kan het ingeleverde werk bekijken en voorzien van feedback.
- Er verschijnt een foutmelding als een bestand groter is dan 10MB.

#### Code testen
Je kunt geautomatiseerde tests schrijven die controleren of de functionaliteit werkt zoals verwacht (unit-testing).

Bijvoorbeeld in **Python met pytest**:

```python
def test_file_upload():
    response = upload_file("test_document.pdf")
    assert response.status_code == 200
    assert response.json()["message"] == "Bestand succesvol geüpload"

def test_large_file_rejection():
    response = upload_file("large_document.pdf")  # >10MB
    assert response.status_code == 400
    assert "Bestand te groot" in response.json()["error"]
```
of in PHP met PHPUnit

```php
<?php
use PHPUnit\Framework\TestCase;

require 'upload.php';

class FileUploadTest extends TestCase {
    public function testFileUpload() {
        $mockFile = [
            "name" => "test_document.pdf",
            "tmp_name" => "/tmp/phpYzdqkD",
            "size" => 5000000 // 5MB
        ];

        $response = uploadFile($mockFile);
        $this->assertEquals(200, $response["status"]);
        $this->assertEquals("Bestand succesvol geüpload", $response["message"]);
    }

    public function testLargeFileRejection() {
        $mockFile = [
            "name" => "large_document.pdf",
            "tmp_name" => "/tmp/phpYzdqkD",
            "size" => 11 * 1024 * 1024 // 11MB
        ];

        $response = uploadFile($mockFile);
        $this->assertEquals(400, $response["status"]);
        $this->assertEquals("Bestand te groot", $response["error"]);
    }
}
?>
```

en ook in javascript met jest

```javascript
const uploadFile = require("./upload");

test("Bestand succesvol geüpload", () => {
    const mockFile = {
        name: "test_document.pdf",
        data: Buffer.from("Dit is een testbestand"),
        size: 5 * 1024 * 1024, // 5MB
    };

    const response = uploadFile(mockFile);
    expect(response.status).toBe(200);
    expect(response.message).toBe("Bestand succesvol geüpload");
});

test("Bestand te groot foutmelding", () => {
    const mockFile = {
        name: "large_document.pdf",
        data: Buffer.from("Dit is een groot bestand"),
        size: 11 * 1024 * 1024, // 11MB
    };

    const response = uploadFile(mockFile);
    expect(response.status).toBe(400);
    expect(response.error).toBe("Bestand te groot");
});
```
---

## Samenvatting
* User stories helpen om gebruikersgericht te werken.
* Je test of de applicatie voldoet door acceptatiecriteria vast te stellen.
* Unit- en integratietests helpen om de functionaliteit van je code automatisch te controleren.