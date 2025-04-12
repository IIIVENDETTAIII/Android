#!/data/data/com.termux/files/usr/bin/bash

echo ">>> Настройка доступа к хранилищу..."
termux-setup-storage

echo ">>> Пакеты для работы с root..."
pkg install root-repo -y
echo ">>> Для графических интерфейсов GUI..."
pkg install x11-repo -y

echo ">>> Обновление системы..."
pkg update -y && pkg upgrade -y

echo ">>> Установка базовых пакетов..."
pkg install -y python python2 python3 python-pip git curl wget nano unzip clang make libffi openssl zlib rust

echo ">>> Установка дополнительных репозиториев..."
pkg install -y unstable-repo

echo ">>> Установка pip и обновление setuptools..."
pip install --upgrade pip setuptools wheel

echo ">>> Установка популярных Python-библиотек..."
pip install requests beautifulsoup4 lxml flask pyrogram tgcrypto \
            numpy pandas pillow matplotlib aiohttp httpx

echo ">>> Установка завершена!"
python --version

echo ">>> Список установленных пакетов..."
pkg list-all
