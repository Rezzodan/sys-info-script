 🖥️ System Information Gathering Script

> A lightweight but powerful Bash script for **Linux system auditing** — collect everything you need to know about your server in seconds.

[![Bash](https://img.shields.io/badge/Bash-4.0+-green.svg)](https://www.gnu.org/software/bash/)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Made with ❤️](https://img.shields.io/badge/Made%20with-❤️-red.svg)]()

---
 📋 What it does

This script pulls **critical system information** into one clean report:

| Category | Details collected |
|----------|-------------------|
| **System** | Hostname, kernel version, architecture, uptime |
| **Resources** | CPU load, memory usage, disk space |
| **Users** | Active sessions, last logins, users with shell access |
| **Network** | Open ports, active connections, IP addresses |
| **Processes** | Running processes (including root-owned) |
| **Security** | Recent SSH successes, recent SSH failures |
| **Suspicious** | Detects tools like `nc`, `nmap`, `hydra`, `miner` |

---

 🚀 Quick Start

```bash
# 1. Clone the repo
git clone https://github.com/Rezzodan/sys-info-script.git
cd sys-info-script

# 2. Make it executable
chmod +x sys_info.sh

# 3. Run it
./sys_info.sh

Example Output
=== SYSTEM INFORMATION ===
Date and time: Mon Aug 31 15:30:45 +05 2026
Hostname: kali
Kernel version: 7.0.0-30-generic
Architecture: x86_64

=== OPEN PORTS (LISTEN) ===
tcp   LISTEN  0  128  0.0.0.0:2222  0.0.0.0:*  users:(("sshd",pid=1676,fd=3))
tcp   LISTEN  0  4096  0.0.0.0:80   0.0.0.0:*  users:(("docker-proxy",pid=5030,fd=7))

=== SUSPICIOUS PROCESSES ===
(empty — nothing found)

=== REPORT SAVED: sys_info_20260831_153045.txt ===

🛠️ Why I built this

While preparing for Security Engineer / Blue Team roles, I wanted a quick way to audit my lab servers and detect anomalies. This script helps me:

    ✅ Check for open ports and unexpected services

    ✅ Monitor users and authentication attempts

    ✅ Spot suspicious processes (miners, backdoors, scanners)

    ✅ Practice Linux system administration skills


Use Cases
Scenario	How this script helps
Daily server check	Run it every morning to see what changed overnight
Post-breach investigation	Collect evidence quickly
CTF / Lab auditing	Understand the state of a compromised machine
Interview preparation	Show real-world Bash and Linux skills

📂 Project Structure
sys-info-script/
├── sys_info.sh          # The main script
├── README.md            # This file
└── examples/            # (coming soon) sample output logs

🧑‍💻 Author
Rezzodan
