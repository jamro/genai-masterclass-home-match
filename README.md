# genai-masterclass-home-match
GenAI Masterclass Project submission for Udacity's "Building Generative AI Solutions" training

## Quick Start

```bash
make setup          # Create virtual environment and install dependencies
make check-env      # Verify .env file is properly configured
make run            # Start Jupyter Lab
```

## Project Overview

This implementation demonstrates a **GenAI-powered real estate matching system** that showcases following AI concepts:

1. **Synthetic Data Generation**: Using LLMs to generate 500 realistic real estate listings across Polish cities
2. **Vector Database Creation**: Storing and organizing listing embeddings for semantic search with ChromaDB
3. **Semantic Search**: Finding relevant properties based on natural language buyer preferences
4. **Augmented Response Generation**: Personalizing listings using LLM-generated descriptions

### Key Features

- **500 AI-generated listings** across 20+ Polish cities with realistic pricing (300K-2.5M PLN)
- **Semantic search** using OpenAI embeddings and ChromaDB vector database
- **Cross-encoder reranking** for improved relevance scoring
- **Personalized descriptions** that emphasize buyer-relevant features while preserving facts
- **Metadata filtering** for precise property matching (bedrooms, location, price, etc.)

### Tech Stack

- **LLMs**: OpenAI GPT-4.1 for generation and personalization
- **Vector DB**: ChromaDB with cosine similarity indexing
- **Embeddings**: OpenAI text-embedding-3-small (1536 dimensions)
- **Reranking**: BAAI/bge-reranker-base cross-encoder
- **Framework**: LangChain with Pydantic structured output
- **Data**: 500 listings in JSON format with rich metadata

For detailed project requirements and evaluation criteria, see [rubric.md](rubric.md).

## Getting Started

The project consists of three main Jupyter notebooks:

1. **`generate_listings.ipynb`** - Creates 500 realistic real estate listings using GPT-4.1
2. **`create_vector_db.ipynb`** - Builds ChromaDB vector database with embeddings
3. **`search.ipynb`** - Demonstrates semantic search and personalized recommendations

Run them in order, or skip to `search.ipynb` if you already have the data and vector database (included in the project).

## Available Commands

Run `make help` to see all available commands:

- `make setup` - Create virtual environment and install dependencies
- `make install` - Install dependencies from requirements.txt
- `make run` - Start Jupyter Lab
- `make freeze` - Update requirements.txt with current dependencies
- `make check-env` - Check if .env file exists and has OPENAI_API_KEY
- `make clean` - Remove virtual environment and cache files

## Manual Setup (Alternative)

If you prefer manual setup:

```bash
python -m venv venv
source venv/bin/activate      # macOS / Linux
# or:
venv\Scripts\activate         # Windows

pip install -r requirements.txt
```

Create `.env` file and set `OPENAI_API_KEY=your_api_key_here`.

## Data Structure

- **`data/raw/`** - 500 JSON files containing generated real estate listings
- **`data/embeddings/`** - Cached embeddings for each listing (auto-generated)
- **`data/.chroma_db/`** - ChromaDB vector database (auto-created)

Each listing includes structured data like bedrooms, bathrooms, price, location, features, and lifestyle benefits.