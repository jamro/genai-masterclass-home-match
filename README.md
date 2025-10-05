# genai-masterclass-home-match
GenAI Masterclass Project submission for Udacity's "Building Generative AI Solutions" training

## Quick Start

```bash
make setup          # Create virtual environment and install dependencies
make check-env       # Verify .env file is properly configured
make run            # Start Jupyter Lab
```

## Project Details

This project is an assessment submission for **Udacity's "Building Generative AI Solutions"** training course. The course focuses on teaching advanced AI system development with real-world impact, covering:

- **Semantic Search**: Teaching AI to interpret human language through semantic search capabilities
- **Vector Databases**: Managing complex data structures with vector databases for efficient similarity search
- **LangChain Integration**: Hands-on development with LangChain to create adaptive language models
- **Practical Applications**: Building user-friendly AI solutions with industry focus

### Project Overview

This implementation demonstrates a **GenAI-powered real estate matching system** that showcases the key concepts learned in the course:

1. **Synthetic Data Generation**: Using LLMs to generate realistic real estate listings
2. **Vector Database Creation**: Storing and organizing listing embeddings for semantic search
3. **Semantic Search**: Finding relevant properties based on buyer preferences
4. **Augmented Response Generation**: Personalizing listings using LLM-generated descriptions

For detailed project requirements and evaluation criteria, see [rubric.md](rubric.md).

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