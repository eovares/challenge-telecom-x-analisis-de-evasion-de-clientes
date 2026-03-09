#!/usr/bin/env bash
set -e

echo "🐍 Creating virtual environment..."
python3 -m venv .venv

echo "✅ Activating venv..."
source .venv/bin/activate

echo "📦 Upgrading pip..."
pip install --upgrade pip

echo "📚 Installing dependencies..."
pip install -r requirements.txt

echo "📓 Registering kernel..."
python -m ipykernel install --user --name=data-env --display-name "Python (Data)"

echo "🎉 Done!"
