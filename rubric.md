# Project Rubric

## Synthetic Data Generation

### Generating Real Estate Listings with an LLM

**Criteria:** The submission must demonstrate using a Large Language Model (LLM) to generate at least 10 diverse and realistic real estate listings containing facts about the real estate.

**Requirements:**
- [x] Demonstrate using a Large Language Model (LLM) to generate real estate listings
- [x] Generate at least 10 diverse and realistic real estate listings
- [x] Ensure listings contain facts about the real estate

**Implementation Details:**
Uses OpenAI GPT-4.1 with structured output via LangChain and Pydantic models to generate realistic Polish real estate listings. The system in [`notebooks/generate_listings.ipynb`](notebooks/generate_listings.ipynb) creates 200 diverse listings across 20+ cities with authentic property details, pricing (300K-2.5M PLN), features, and market positioning. Each listing contains 15+ structured fields including specific facts about bedrooms, bathrooms, size, location, and transportation options.

**Sample Listings:**
- [`listing_001.json`](data/raw/listing_001.json) - House in Ustka Port District (1.39M PLN)
- [`listing_010.json`](data/raw/listing_010.json) - Studio in Chelm (375K PLN) 
- [`listing_020.json`](data/raw/listing_020.json) - House in Sopot Karlikowo (1.88M PLN)
- [`listing_030.json`](data/raw/listing_030.json) - Studio in Krakow Bronowice (415K PLN)
- [`listing_040.json`](data/raw/listing_040.json) - Studio in Katowice Brynow (419K PLN)
- [`listing_050.json`](data/raw/listing_050.json) - House in Warsaw Ursynow (1.90M PLN)

---

## Semantic Search

### Creating a Vector Database and Storing Listings

**Criteria:** The project must demonstrate the creation of a vector database and successfully storing real estate listing embeddings within it. The database should effectively store and organize the embeddings generated from the LLM-created listings.

**Requirements:**
- [ ] Demonstrate the creation of a vector database
- [ ] Successfully store real estate listing embeddings within the vector database
- [ ] Effectively store and organize the embeddings generated from the LLM-created listings

**Implementation Details:**
*[Describe vector database setup, embedding generation, storage architecture, database choice, etc.]*

### Semantic Search of Listings Based on Buyer Preferences

**Criteria:** The application must include a functionality where listings are semantically searched based on given buyer preferences. The search should return listings that closely match the input preferences.

**Requirements:**
- [ ] Include a functionality where listings are semantically searched based on given buyer preferences
- [ ] Search should return listings that closely match the input preferences

**Implementation Details:**
*[Describe search algorithm, preference matching, similarity scoring, search interface, etc.]*

---

## Augmented Response Generation

### Logic for Searching and Augmenting Listing Descriptions

**Criteria:** The project must demonstrate a logical flow where buyer preferences are used to search and then augment the description of real estate listings. The augmentation should personalize the listing without changing factual information.

**Requirements:**
- [ ] Demonstrate a logical flow where buyer preferences are used to search and then augment the description of real estate listings
- [ ] The augmentation should personalize the listing without changing factual information

**Implementation Details:**
*[Describe the workflow, augmentation logic, fact preservation methods, etc.]*

### Use of LLM for Generating Personalized Descriptions

**Criteria:** The submission must utilize an LLM to generate personalized descriptions for the real estate listings based on buyer preferences. The descriptions should be unique, appealing, and tailored to the preferences provided.

**Requirements:**
- [ ] Utilize an LLM to generate personalized descriptions for the real estate listings based on buyer preferences
- [ ] The descriptions should be unique, appealing, and tailored to the preferences provided

**Implementation Details:**
*[Describe LLM usage, prompt engineering for personalization, description quality, preference integration, etc.]*
