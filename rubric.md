# Project Rubric

## Synthetic Data Generation

### Generating Real Estate Listings with an LLM

**Criteria:** The submission must demonstrate using a Large Language Model (LLM) to generate at least 10 diverse and realistic real estate listings containing facts about the real estate.

**Requirements:**
- [x] Demonstrate using a Large Language Model (LLM) to generate real estate listings
- [x] Generate at least 10 diverse and realistic real estate listings
- [x] Ensure listings contain facts about the real estate

**Implementation Details:**
Uses OpenAI GPT-4.1 with structured output via LangChain and Pydantic models to generate realistic Polish real estate listings. The system in [`notebooks/generate_listings.ipynb`](notebooks/generate_listings.ipynb) creates diverse listings across 20+ cities with authentic property details, pricing (300K-2.5M PLN), features, and market positioning. Each listing contains 15+ structured fields including specific facts about bedrooms, bathrooms, size, location, and transportation options.

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
- [x] Demonstrate the creation of a vector database
- [x] Successfully store real estate listing embeddings within the vector database
- [x] Effectively store and organize the embeddings generated from the LLM-created listings

**Implementation Details:**
The implementation in [`notebooks/create_vector_db.ipynb`](notebooks/create_vector_db.ipynb) uses ChromaDB as a persistent vector database with cosine similarity indexing. The system processes 50 raw listing JSON files from the `data/raw` directory, transforms them into structured documents combining title, property details, location, description, features, lifestyle benefits, neighborhood info, buyer profile, and market positioning. Each document is embedded using OpenAI's `text-embedding-3-small` model (1536 dimensions) with intelligent caching to avoid regenerating embeddings for existing files. The ChromaDB collection is configured with proper metadata filtering capabilities and stores all documents with rich metadata including city, neighborhood, property type, bedrooms, bathrooms, size, price, urban level, and transportation access flags. See the [Document Preparation](notebooks/create_vector_db.ipynb#Document-Preparation) and [Vector Database Setup](notebooks/create_vector_db.ipynb#Vector-Database-Setup) sections for implementation details.

### Semantic Search of Listings Based on Buyer Preferences

**Criteria:** The application must include a functionality where listings are semantically searched based on given buyer preferences. The search should return listings that closely match the input preferences.

**Requirements:**
- [x] Include a functionality where listings are semantically searched based on given buyer preferences
- [x] Search should return listings that closely match the input preferences

**Implementation Details:**
The semantic search functionality demonstrates query processing using the same OpenAI `text-embedding-3-small` model to embed natural language buyer preferences. The search combines semantic similarity with metadata filtering using ChromaDB's query capabilities, allowing for complex conditions like city restrictions and bedroom count ranges. The implementation includes a working example query for "2-3 bedroom property in Krakow for me and my three cats with a big balcony" that returns semantically relevant results including a duplex with pet-friendly features and a historic apartment with work-from-home appeal. The search returns the top 3 most relevant listings with full metadata, demonstrating effective matching of buyer preferences to available properties through both semantic understanding and structured filtering. See the [Search Demonstration](notebooks/create_vector_db.ipynb#Search-Demonstration) section for the complete working example.

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
