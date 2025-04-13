#!/data/data/com.termux/files/usr/bin/bash

# Настройка доступа к хранилищу
echo -e "\033[0;32m>>> Настройка TESR доступа к хранилищу...\033[0m"
termux-setup-storage

# Пакеты для работы с root
echo -e "\033[0;32m>>> Пакеты для работы с root...\033[0m"
pkg install root-repo -y

# Для графических интерфейсов GUI
echo -e "\033[0;32m>>> Для графических интерфейсов GUI...\033[0m"
pkg install x11-repo -y

# Обновление системы
echo -e "\033[0;32m>>> Обновление системы...\033[0m"
pkg update -y && pkg upgrade -y

# Установка базовых пакетов
echo -e "\033[0;32m>>> Установка базовых пакетов...\033[0m"
pkg install -y python python2 python3 python-pip git curl wget nano unzip clang make libffi openssl zlib rust

# Установка дополнительных репозиториев
echo -e "\033[0;32m>>> Установка дополнительных репозиториев...\033[0m"
pkg install -y unstable-repo

# Установка pip и обновление setuptools
echo -e "\033[0;32m>>> Установка pip и обновление setuptools...\033[0m"
pip install --upgrade pip setuptools wheel

# Установка популярных Python-библиотек
echo -e "\033[0;32m>>> Установка популярных Python-библиотек...\033[0m"
pip install requests colorama flask

# Установка дополнительных Python-библиотек
echo -e "\033[0;32m>>> Установка дополнительных Python-библиотек...\033[0m"
pip install requests beautifulsoup4 lxml pyrogram tgcrypto \
            numpy pandas pillow matplotlib aiohttp httpx

# Завершение установки
echo -e "\033[0;32m>>> Установка завершена!\033[0m"
python --version

# Список установленных пакетов
echo -e "\033[0;32m>>> Список установленных пакетов...\033[0m"
pkg list-all
