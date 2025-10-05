# GenAI Masterclass Project Makefile

.PHONY: help install clean setup run freeze check-env

# Default target
help:
	@echo "Available commands:"
	@echo "  setup     - Create virtual environment and install dependencies"
	@echo "  install   - Install dependencies from requirements.txt"
	@echo "  run       - Start Jupyter Lab"
	@echo "  freeze    - Update requirements.txt with current dependencies"
	@echo "  check-env - Check if .env file exists and has OPENAI_API_KEY"
	@echo "  clean     - Remove virtual environment and __pycache__ directories"
	@echo ""
	@echo "Quick start: make setup && make check-env && make run"

# Create virtual environment and install dependencies
setup:
	python -m venv venv
	@echo "Virtual environment created. Activate with: source venv/bin/activate"
	@echo "Then run: make install"

# Install dependencies
install:
	pip install -r requirements.txt
	@echo "Dependencies installed successfully!"

# Start Jupyter Lab
run:
	jupyter lab

# Update requirements.txt with current environment
freeze:
	pip freeze > requirements.txt
	@echo "requirements.txt updated!"

# Check if .env file exists and has required variables
check-env:
	@if [ ! -f .env ]; then \
		echo "⚠️  .env file not found. Create one with: echo 'OPENAI_API_KEY=your_api_key_here' > .env"; \
		exit 1; \
	fi
	@if ! grep -q "OPENAI_API_KEY=" .env; then \
		echo "⚠️  OPENAI_API_KEY not found in .env file"; \
		exit 1; \
	fi
	@echo "✅ .env file looks good!"

# Clean up virtual environment and cache files
clean:
	rm -rf venv
	find . -type d -name "__pycache__" -exec rm -rf {} + 2>/dev/null || true
	find . -name "*.pyc" -delete 2>/dev/null || true
	@echo "Cleaned up virtual environment and cache files"
