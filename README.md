# genai-masterclass-home-match
GenAI Masterclass Project submission

## Quick Start

```bash
make setup          # Create virtual environment and install dependencies
make check-env       # Verify .env file is properly configured
make run            # Start Jupyter Lab
```

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