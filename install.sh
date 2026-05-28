#!/bin/bash

# CHIMERA Installer by PhonkAlphabet
echo "⚡️👾 Initializing CHIMERA v1.0 Phalanx Installation... 👾⚡️"

# Check for Python
if ! command -v python3 &> /dev/null; then
    echo "[-] Python3 not found. Please install it first."
    exit 1
fi

# Install Dependencies
echo "[*] Installing core dependencies..."
pip3 install aiohttp dnspython requests llama-cpp-python paramiko --quiet

# Optional UI Dependencies
echo "[*] Checking for UI dependencies (pygame, colorama, tqdm)..."
pip3 install pygame colorama tqdm --quiet || echo "[!] UI dependencies failed to install, continuing in headless mode..."

# Download the script
echo "[*] Downloading CHIMERA v1.0..."
curl -sSL -O https://raw.githubusercontent.com/masterfrequency/Chimera/main/CHIMERA_v1.0.py

# Launch
echo "[+] Installation complete. Launching CHIMERA..."
python3 CHIMERA_v1.0.py
