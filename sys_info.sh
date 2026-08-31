#!/bin/bash

# sys_info.sh — скрипт для сбора информации о системе
# Автор: rezzodan

OUTPUT_FILE="sys_info_$(date +%Y%m%d_%H%M%S).txt"

echo "=== СИСТЕМНАЯ ИНФОРМАЦИЯ ===" | tee -a "$OUTPUT_FILE"
echo "Дата и время: $(date)" | tee -a "$OUTPUT_FILE"
echo "Имя хоста: $(hostname)" | tee -a "$OUTPUT_FILE"
echo "Версия ядра: $(uname -r)" | tee -a "$OUTPUT_FILE"
echo "Архитектура: $(uname -m)" | tee -a "$OUTPUT_FILE"
echo "" | tee -a "$OUTPUT_FILE"

echo "=== ЗАГРУЗКА СИСТЕМЫ ===" | tee -a "$OUTPUT_FILE"
uptime | tee -a "$OUTPUT_FILE"
echo "" | tee -a "$OUTPUT_FILE"

echo "=== ПАМЯТЬ ===" | tee -a "$OUTPUT_FILE"
free -h | tee -a "$OUTPUT_FILE"
echo "" | tee -a "$OUTPUT_FILE"

echo "=== ДИСКОВОЕ ПРОСТРАНСТВО ===" | tee -a "$OUTPUT_FILE"
df -h | tee -a "$OUTPUT_FILE"
echo "" | tee -a "$OUTPUT_FILE"

echo "=== АКТИВНЫЕ ПОЛЬЗОВАТЕЛИ ===" | tee -a "$OUTPUT_FILE"
who | tee -a "$OUTPUT_FILE"
echo "" | tee -a "$OUTPUT_FILE"

echo "=== ПОСЛЕДНИЕ 5 ЛОГИНОВ ===" | tee -a "$OUTPUT_FILE"
last -n 5 | tee -a "$OUTPUT_FILE"
echo "" | tee -a "$OUTPUT_FILE"

echo "=== ОТКРЫТЫЕ ПОРТЫ (LISTEN) ===" | tee -a "$OUTPUT_FILE"
ss -tulpn | grep LISTEN | tee -a "$OUTPUT_FILE"
echo "" | tee -a "$OUTPUT_FILE"

echo "=== ВСЕ АКТИВНЫЕ СОЕДИНЕНИЯ ===" | tee -a "$OUTPUT_FILE"
ss -tunp | grep ESTAB | tee -a "$OUTPUT_FILE"
echo "" | tee -a "$OUTPUT_FILE"

echo "=== ПРОЦЕССЫ ОТ ROOT ===" | tee -a "$OUTPUT_FILE"
ps aux | grep root | tee -a "$OUTPUT_FILE"
echo "" | tee -a "$OUTPUT_FILE"

echo "=== ПОДОЗРИТЕЛЬНЫЕ ПРОЦЕССЫ (nc, nmap, hydra, etc.) ===" | tee -a "$OUTPUT_FILE"
ps aux | grep -E "nc|nmap|hydra|socat|miner|crypto" | grep -v grep | tee -a "$OUTPUT_FILE"
echo "" | tee -a "$OUTPUT_FILE"

echo "=== СЕТЕВЫЕ ИНТЕРФЕЙСЫ ===" | tee -a "$OUTPUT_FILE"
ip -br a | tee -a "$OUTPUT_FILE"
echo "" | tee -a "$OUTPUT_FILE"

echo "=== ПОЛЬЗОВАТЕЛИ С SHELL ===" | tee -a "$OUTPUT_FILE"
cat /etc/passwd | grep -E "/bin/bash|/bin/sh" | tee -a "$OUTPUT_FILE"
echo "" | tee -a "$OUTPUT_FILE"

echo "=== ПОСЛЕДНИЕ НЕУДАЧНЫЕ ПОПЫТКИ SSH ===" | tee -a "$OUTPUT_FILE"
sudo grep "Failed password" /var/log/auth.log 2>/dev/null | tail -5 | tee -a "$OUTPUT_FILE"
echo "" | tee -a "$OUTPUT_FILE"

echo "=== ПОСЛЕДНИЕ УСПЕШНЫЕ ВХОДЫ SSH ===" | tee -a "$OUTPUT_FILE"
sudo grep "Accepted" /var/log/auth.log 2>/dev/null | tail -5 | tee -a "$OUTPUT_FILE"
echo "" | tee -a "$OUTPUT_FILE"

echo "=== ОТЧЕТ СОХРАНЕН: $OUTPUT_FILE ===" | tee -a "$OUTPUT_FILE"
