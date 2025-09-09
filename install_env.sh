#!/bin/bash
pip3 install --upgrade pip

# Install uv using the recommended method
curl -LsSf https://astral.sh/uv/install.sh | sh

# Add uv to PATH for current session
export PATH="$HOME/.cargo/bin:$PATH"

# Create virtual environment and install dependencies
uv venv
source .venv/bin/activate
uv sync --extra dev --extra test
