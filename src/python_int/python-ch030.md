---
title: Python ai
date: 2025-06-03
---

# {{ course-title }}

Je kunt Python heel goed gebruiken om te communiceren en data uit te wisselen met een Large Language Model (LLM).  
Hieronder zie je hoe je dat kunt doen:

### Stap 1: Kies je LLM API

Er zijn verschillende grote spelers op de markt. Je keuze hangt af van je project, budget en voorkeuren:

1.  **OpenAI API**: Dit is de meest populaire keuze. Ze bieden toegang tot modellen zoals GPT-3.5 en GPT-4.
    * **Voordelen**: Zeer krachtige modellen, uitstekende documentatie, grote community.
    * **Nadelen**: Niet gratis, vereist een API-sleutel en betaling (pay-as-you-go).
    * **Startpunt**: [OpenAI API documentatie](https://platform.openai.com/docs/overview)
2.  **Google Gemini API (via Google AI Studio)**: Google's antwoord op OpenAI. Biedt toegang tot de Gemini-modellen.
    * **Voordelen**: Krachtige modellen, vaak genereuze gratis-tier limieten voor persoonlijk gebruik, geïntegreerd in het Google-ecosysteem.
    * **Nadelen**: Relatief nieuw, de documentatie en community zijn nog in ontwikkeling vergeleken met OpenAI.
    * **Startpunt**: [Google AI Studio](https://aistudio.google.com/) (hier kun je API-sleutels krijgen en experimenteren) en [Google Cloud Vertex AI](https://cloud.google.com/vertex-ai) (voor meer enterprise-achtige toepassingen).
3.  **Hugging Face (Transformers library)**: Dit is geen directe API zoals OpenAI of Google, maar een platform en library voor het hosten en gebruiken van *vele verschillende* open-source LLM's.
    * **Voordelen**: Enorme verscheidenheid aan modellen (gratis en commercieel), flexibiliteit, veel controle als je lokaal modellen wilt draaien.
    * **Nadelen**: Vereist meer technische kennis om modellen lokaal te draaien, prestaties variëren sterk per model.
    * **Startpunt**: [Hugging Face Hub](https://huggingface.co/models) en [Transformers library](https://huggingface.co/docs/transformers/index).
4.  **Anthropic (Claude API)**: Biedt de Claude-modellen aan, bekend om hun veiligheid en nuttigheid.
    * **Voordelen**: Concurrerende modellen, vaak goede prestaties op specifieke taken.
    * **Nadelen**: Minder bekend en kleinere community dan OpenAI/Google.
    * **Startpunt**: [Anthropic API documentatie](https://docs.anthropic.com/en/api)

**Aanbeveling voor beginners:** Start met **OpenAI API** of **Google Gemini API**. Deze zijn het makkelijkst om mee te beginnen vanwege hun heldere documentatie en directe API-toegang.

### Stap 2: Verkrijg een API-sleutel

Voor de commerciële API's (OpenAI, Google Gemini (soms), Anthropic) heb je een API-sleutel nodig. Dit is een unieke code die je toegang geeft tot hun diensten en die vaak gekoppeld is aan je facturering.

* **OpenAI**: Ga naar [platform.openai.com](https://platform.openai.com/) en maak een account aan. Ga dan naar "API Keys" en genereer een nieuwe sleutel.
* **Google Gemini**: Ga naar [aistudio.google.com](https://aistudio.google.com/). Je kunt hier een API-sleutel genereren. Voor productiegebruik zul je waarschijnlijk ook een Google Cloud project nodig hebben.

**Beveilig je API-sleutel!** Deel deze nooit in je code op GitHub of met anderen. Gebruik omgevingsvariabelen (environment variables) om ze veilig te houden.

### Stap 3: Installeer de Python Library

De meeste LLM API's hebben hun eigen Python client library.

* **OpenAI**:
    ```bash
    pip install openai
    ```
* **Google Gemini (Google Generative AI SDK)**:
    ```bash
    pip install google-generativeai
    ```
* **Hugging Face (voor de Transformers library)**:
    ```bash
    pip install transformers
    ```

### Stap 4: Je eerste API-aanroep (Voorbeeld met OpenAI)

Laten we een eenvoudig voorbeeld nemen met de OpenAI API.

```python
import openai
import os

# 1. Je API-sleutel instellen (ZEER BELANGRIJK: Gebruik geen hardcoded sleutels in echte code!)
# Haal de API-sleutel op uit een omgevingsvariabele
# Je kunt dit instellen in je terminal: export OPENAI_API_KEY='jouw_api_sleutel'
# Of voor Windows (PowerShell): $env:OPENAI_API_KEY='jouw_api_sleutel'
# Voor CMD: set OPENAI_API_KEY='jouw_api_sleutel'
# Voor Jupyter Notebooks/Google Colab: os.environ["OPENAI_API_KEY"] = "jouw_api_sleutel"
openai.api_key = os.getenv("OPENAI_API_KEY")

if not openai.api_key:
    print("Fout: OPENAI_API_KEY omgevingsvariabele is niet ingesteld.")
    print("Stel deze in voordat je het script uitvoert.")
    exit()

def vraag_llm(prompt_text):
    """ Stuurt een prompt naar de OpenAI LLM en retourneert het antwoord. """
    try:
        response = openai.chat.completions.create(
            model="gpt-3.5-turbo", # Of "gpt-4", "gpt-4o" (Omni) etc.
            messages=[
                {"role": "system", "content": "Je bent een behulpzame assistent."},
                {"role": "user", "content": prompt_text}
            ],
            max_tokens=150, # Maximaal aantal tokens (woorden/stukjes tekst) in het antwoord
            temperature=0.7 # Hoe creatief/willekeurig het antwoord is (0.0 = zeer direct, 1.0 = zeer creatief)
        )
        return response.choices[0].message.content
    except Exception as e:
        return f"Er is een fout opgetreden: {e}"

# Voorbeeldgebruik
if __name__ == "__main__":
    gebruikers_prompt = "Geef me drie ideeën voor een korte sci-fi verhaalplot."
    antwoord = vraag_llm(gebruikers_prompt)
    print(f"Jouw prompt: {gebruikers_prompt}\n")
    print(f"LLM Antwoord:\n{antwoord}")

    gebruikers_prompt_2 = "Schrijf een gedicht over de lente."
    antwoord_2 = vraag_llm(gebruikers_prompt_2)
    print(f"\n---\nJouw prompt: {gebruikers_prompt_2}\n")
    print(f"LLM Antwoord:\n{antwoord_2}")
```

**Uitleg van de OpenAI code:**

* **`import os`**: Om je API-sleutel veilig uit een omgevingsvariabele te halen. **Dit is cruciaal!**
* **`openai.api_key = os.getenv("OPENAI_API_KEY")`**: Haalt de sleutel op. Zorg dat je de omgevingsvariabele `OPENAI_API_KEY` hebt ingesteld in je systeem voordat je het script runt.
* **`openai.chat.completions.create(...)`**: Dit is de functie die de daadwerkelijke aanroep naar het model doet.
    * **`model="gpt-3.5-turbo"`**: Specificeert welk model je wilt gebruiken. Dit is een belangrijk aspect van kosten en prestaties.
    * **`messages`**: Dit is waar je de conversatie definieert.
        * `"role": "system"`: Instructies voor het model over zijn rol/gedrag.
        * `"role": "user"`: De input van de gebruiker (jouw prompt).
        * `"role": "assistant"`: (Optioneel) Eerdere antwoorden van het model om context te bieden voor vervolgvragen.
    * **`max_tokens`**: Beperkt de lengte van het antwoord van de LLM. Handig om kosten te beheersen.
    * **`temperature`**: Bepaalt hoe "creatief" of "willekeurig" het antwoord is.
        * `0.0`: Zeer deterministisch en gefocust.
        * `1.0`: Zeer creatief en divers.

### Stap 5: Experimenteer en bouw verder

* **Lees de documentatie**: De API-documentatie van de gekozen provider is je beste vriend. Daar vind je alle parameters, best practices en voorbeeldcode.
* **Begrijp "Prompts"**: De manier waarop je je vraag (prompt) formuleert, is cruciaal voor de kwaliteit van het antwoord van een LLM. Dit heet "prompt engineering". Experimenteer met verschillende prompts.
* **Fouten afhandelen**: Voeg altijd `try-except` blokken toe om API-fouten af te handelen (bijvoorbeeld netwerkproblemen, limieten overschreden).
* **Kostenbeheer**: Houd rekening met de kosten. Begin klein, gebruik `max_tokens` en monitor je verbruik.
* **Use Cases**: Denk na over wat je wilt bouwen:
    * Een eenvoudige chatbot.
    * Een tool die samenvattingen maakt van teksten.
    * Een programma dat ideeën genereert voor verhalen, code, enz.
    * Een tool die tekst vertaalt of herschrijft.

### Belangrijke concepten voor LLM API's:

* **Token**: Een token is een stukje tekst, vaak een woord of een deel van een woord. LLM's "denken" in tokens. Kosten en `max_tokens` zijn gebaseerd op tokens.
* **Prompt Engineering**: De kunst en wetenschap van het formuleren van effectieve instructies (prompts) voor een LLM om het gewenste resultaat te krijgen.
* **Context Window**: De hoeveelheid tekst (tokens) die een LLM tegelijkertijd kan verwerken. Dit omvat zowel je input prompt als de output van het model. Oudere modellen hadden kleinere context windows.
* **Role-based chat**: Zoals je in het OpenAI voorbeeld zag, definieer je de "rollen" (system, user, assistant) in de conversatie. Dit helpt het model om de context beter te begrijpen.
