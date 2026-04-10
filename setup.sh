#!/bin/bash

# S4RKU's Sniper - Setup Script for Linux/Mac

echo ""
echo "   ========================================"
echo "      S4RKU's Sniper - Setup Script"
echo "   ========================================"
echo ""

# Check if Node.js is installed
echo "[1/3] Checking Node.js installation..."
if ! command -v node &> /dev/null; then
    echo "ERROR: Node.js is not installed!"
    echo "Please install Node.js v20.18 or higher from: https://nodejs.org/"
    echo ""
    exit 1
fi
echo "✓ Node.js is installed ($(node --version))"

# Install dependencies
echo ""
echo "[2/3] Installing dependencies..."
if npm install; then
    echo "✓ Dependencies installed successfully"
else
    echo "ERROR: Failed to install dependencies!"
    echo ""
    exit 1
fi

# Setup configuration file
echo ""
echo "[3/3] Setting up configuration file..."
if [ -f config.json ]; then
    echo "Configuration file already exists."
    echo "If you want to reset it, delete config.json and run this script again."
else
    cp config.example.json config.json
    echo "✓ Configuration file created from template"
    echo ""
    echo "IMPORTANT: Please edit config.json with your credentials before running the sniper!"
fi

echo ""
echo "   ========================================"
echo "      Setup Complete!"
echo "   ========================================"
echo ""
echo "Next steps:"
echo "  1. Edit config.json with your Discord credentials"
echo "  2. Run: npm start"
echo "  3. Use .help command in Discord for commands list"
echo ""
echo "For more information, see README.md"
echo ""
