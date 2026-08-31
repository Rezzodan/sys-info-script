# 🖥️ sys-info-script

<p align="center">
  <img src="https://img.shields.io/badge/version-1.0.0-blue.svg" alt="Version">
  <img src="https://img.shields.io/badge/status-stable-green.svg" alt="Status">
  <img src="https://img.shields.io/badge/platform-Linux-lightgrey.svg" alt="Platform">
  <img src="https://img.shields.io/badge/PRs-welcome-brightgreen.svg" alt="PRs Welcome">
</p>

[![Bash](https://img.shields.io/badge/Bash-4.0+-green.svg)](https://www.gnu.org/software/bash/)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Made with ❤️](https://img.shields.io/badge/Made%20with-❤️-red.svg)]()

**Choose your language / Выберите язык:**  
- [🇬🇧 English](#-english-version)  
- [🇷🇺 Русский](#-русская-версия)
---

## 🇬🇧 English Version

### 📋 What it does

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

### 🚀 Quick Start

```bash
# 1. Clone the repo
git clone https://github.com/Rezzodan/sys-info-script.git
cd sys-info-script

# 2. Make it executable
chmod +x sys_info.sh

# 3. Run it
./sys_info.sh
```

The script generates a timestamped report file:  
`sys_info_YYYYMMDD_HHMMSS.txt`

---

### 🛠️ Why I built this

While preparing for **Security Engineer / Blue Team** roles, I wanted a quick way to audit my lab servers and detect anomalies. This script helps me:

- ✅ Check for open ports and unexpected services
- ✅ Monitor users and authentication attempts
- ✅ Spot suspicious processes (miners, backdoors, scanners)
- ✅ Practice Linux system administration skills
- ✅ Build a reusable tool for daily use

---

### 🧪 Use Cases

| Scenario | How this script helps |
|----------|----------------------|
| **Daily server check** | Run it every morning to see what changed overnight |
| **Post-breach investigation** | Collect evidence quickly |
| **CTF / Lab auditing** | Understand the state of a compromised machine |
| **Interview preparation** | Show real-world Bash and Linux skills |

---

### 📂 Project Structure

```
sys-info-script/
├── sys_info.sh          # The main script
├── README.md            # This file
└── examples/            # Sample output logs
```

---

### 📚 What I Learned

- Writing clean, reusable Bash scripts
- Parsing system files (`/etc/passwd`, `/var/log/auth.log`)
- Using `ss`, `ps`, `grep`, `awk`, `tee` in combination
- Building a professional README and GitHub portfolio
- Version control with Git and GitHub

---

### 🧑‍💻 Author

**Rezzodan**  
Cybersecurity enthusiast | Linux | Networking | Blue Team

- GitHub: [@Rezzodan](https://github.com/Rezzodan)

---

### 📄 License

MIT © 2026 Rezzodan

---

---

## 🇷🇺 Русская версия

### 📋 Что собирает скрипт

| Категория | Что проверяет |
|-----------|---------------|
| **Система** | Имя хоста, версия ядра, архитектура, время работы |
| **Ресурсы** | Загрузка CPU, память, свободное место на дисках |
| **Пользователи** | Активные сессии, последние логины, пользователи с shell |
| **Сеть** | Открытые порты, активные соединения, IP-адреса |
| **Процессы** | Запущенные процессы (включая от root) |
| **Безопасность** | Успешные и неудачные попытки SSH |
| **Подозрительное** | Обнаруживает инструменты вроде `nc`, `nmap`, `hydra`, `miner` |

---

### 🚀 Быстрый старт

```bash
# 1. Склонируй репозиторий
git clone https://github.com/Rezzodan/sys-info-script.git
cd sys-info-script

# 2. Сделай скрипт исполняемым
chmod +x sys_info.sh

# 3. Запусти
./sys_info.sh
```

Скрипт создаст файл с отчётом:  
`sys_info_ГГГГММДД_ЧЧММСС.txt`

---

### 🛠️ Зачем я это сделал

Готовясь к позициям **Security Engineer / Blue Team**, мне нужен был быстрый способ аудита серверов и поиска аномалий. Этот скрипт помогает:

- ✅ Проверять открытые порты и неожиданные сервисы
- ✅ Отслеживать пользователей и попытки входа
- ✅ Находить подозрительные процессы (майнеры, бэкдоры, сканеры)
- ✅ Практиковаться в администрировании Linux
- ✅ Создать полезный инструмент для ежедневного использования

---

### 🧪 Сценарии использования

| Ситуация | Как помогает скрипт |
|----------|---------------------|
| **Ежедневная проверка сервера** | Запускай каждое утро, чтобы видеть изменения |
| **Расследование инцидента** | Быстро собери улики |
| **Аудит в CTF / лаборатории** | Пойми состояние скомпрометированной машины |
| **Подготовка к собеседованию** | Покажи реальные навыки Bash и Linux |

---

### 📂 Структура проекта

```
sys-info-script/
├── sys_info.sh          # Основной скрипт
├── README.md            # Этот файл
└── examples/            # Примеры выводов
```

---

### 📚 Что я изучил

- Писать чистые, переиспользуемые Bash-скрипты
- Парсить системные файлы (`/etc/passwd`, `/var/log/auth.log`)
- Использовать `ss`, `ps`, `grep`, `awk`, `tee` в связке
- Оформлять профессиональный README и портфолио
- Работать с Git и GitHub

---

### 🧑‍💻 Автор

**Rezzodan**  
Энтузиаст кибербезопасности | Linux | Сети | Blue Team

- GitHub: [@Rezzodan](https://github.com/Rezzodan)

---

### 📄 Лицензия

MIT © 2026 Rezzodan
```
