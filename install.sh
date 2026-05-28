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
echo "[*] Attempting to install UI dependencies (pygame, colorama, tqdm)..."
# Suppress stderr to keep the output clean if build fails
pip3 install pygame colorama tqdm --quiet 2>/dev/null
if [ $? -ne 0 ]; then
    echo "[!] UI dependencies (pygame) could not be built. CHIMERA will run in Headless Mode."
    echo "[*] To enable UI/Audio, install SDL development libraries (e.g., 'pkg install pgl' or 'apt install libsdl2-dev')."
else
    echo "[+] UI dependencies installed successfully."
fi

# Download the script
echo "[*] Downloading CHIMERA v1.0..."
curl -sSL -O https://raw.githubusercontent.com/masterfrequency/Chimera/main/CHIMERA_v1.0.py

# Launch
echo "[+] Installation complete. Launching CHIMERA..."
python3 CHIMERA_v1.0.py
