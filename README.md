# CHIMERA — Autonomous Breach Engine v1.0
### ⚡️👾 by 🇭🇷 PhonkAlphabet 👾⚡️

![CHIMERA Header](chimera_header.gif)

CHIMERA is a high-performance, autonomous breach engine designed for reconnaissance, exploitation, and post-exploitation operations. It leverages advanced concurrency, neural cortex planning, and stealthy exfiltration protocols to provide a comprehensive offensive security toolkit.

## 🚀 One-Liner Installation & Execution

Run the following command to automatically install all dependencies and launch the CHIMERA interactive menu:

```bash
bash <(curl -sSL https://raw.githubusercontent.com/masterfrequency/Chimera/main/install.sh)
```

## ✨ Features

- **Autonomous Reconnaissance**: Multi-threaded DNS, port, and service discovery.
- **Neural Cortex Planner**: Integrated LLM support for intelligent decision-making (supports GGUF models).
- **Phalanx Protocol**: Advanced persistence and lateral movement capabilities.
- **Stealth Exfiltration**: Encrypted data exfiltration via multiple sinks (Discord, DNS, etc.).
- **Anti-Forensic Cleanup**: Automated workspace sanitization and log erasure.
- **Interactive UI**: Cyan ASCII menu with an integrated model downloader and streamlined navigation.

## 🛠 Manual Setup

If you prefer to set up manually:

1. **Clone the repository**:
   ```bash
   git clone https://github.com/masterfrequency/Chimera.git
   cd Chimera
   ```

2. **Install dependencies**:
   ```bash
   pip3 install aiohttp dnspython requests llama-cpp-python paramiko
   # Optional for UI/Audio:
   pip3 install pygame colorama tqdm
   ```

3. **Launch CHIMERA**:
   ```bash
   python3 CHIMERA_v1.0.py
   ```

### 🎨 Enabling Full UI & Audio (Optional)
If you are running in a terminal-only environment like **Termux** or a headless Linux server, the UI dependencies (`pygame`) may fail to build due to missing SDL libraries. To enable the full interactive experience:

- **Termux**: `pkg install x11-repo && pkg install pgl`
- **Debian/Ubuntu**: `sudo apt install libsdl2-dev libsdl2-image-dev libsdl2-mixer-dev libsdl2-ttf-dev`
- **Arch Linux**: `sudo pacman -S sdl2 sdl2_image sdl2_mixer sdl2_ttf`

## 🧠 AI Integration

CHIMERA supports a wide range of GGUF models for its Neural Cortex. Use the built-in downloader in the menu to fetch models ranging from TinyLlama (0.5GB) to Llama-2-70B (39GB).

## 🏗 Script Architecture

The CHIMERA engine is structured into 14 specialized segments, each handling a critical aspect of the autonomous breach lifecycle:

| Segment | Component | Description |
| :--- | :--- | :--- |
| **0** | **Constants & Config** | Defines operational parameters, network timeouts, evasion pools, and cryptographic keys. |
| **1** | **Logging & UI** | Forensic-grade telemetry system and the interactive terminal interface. |
| **3** | **State Store** | Async-safe SQLite matrix for tracking hosts, services, findings, and loot. |
| **4** | **Planner (LLM Cortex)** | The decision-making brain that uses LLMs to analyze state and choose next actions. |
| **5** | **Recon Engine** | Handles subdomain discovery, port scanning, and service fingerprinting. |
| **6** | **Exploit Registry** | A library of exploit modules and the logic for firing them at targets. |
| **7** | **Implant Generator** | Dynamically builds Python-based beacons for post-exploitation. |
| **8** | **Mesh C2** | The command-and-control listener that manages multiple implant sessions. |
| **9** | **Lateral Movement** | Logic for propagating through the network using discovered credentials. |
| **10** | **Persistence** | Ensures long-term access by installing backdoors on compromised hosts. |
| **11** | **Exfiltration** | Stealthily moves sensitive data to external sinks like Discord or DNS. |
| **12** | **Erasure & Cleanup** | Forensic-grade sanitization of logs and operational artifacts. |
| **13** | **Autopilot Orchestrator** | The main loop that binds all engines together for fully autonomous operation. |
| **14** | **CLI & Entry Point** | Handles argument parsing and the initial bootstrap of the engine. |

## ⚠️ Disclaimer

CHIMERA is intended for authorized security testing and educational purposes only. Unauthorized use against systems without prior consent is illegal and unethical. The author is not responsible for any misuse of this tool.

---
**⚡️👾 by 🇭🇷 PhonkAlphabet 👾⚡️**
