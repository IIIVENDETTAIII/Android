#!/data/data/com.termux/files/usr/bin/bash

echo ">>> Настройка доступа к хранилищу..."
termux-setup-storage

echo ">>> Обновление системы..."
pkg update -y && pkg upgrade -y

echo ">>> Установка базовых пакетов..."
pkg install -y python git curl wget nano unzip clang make libffi openssl zlib rust

echo ">>> Установка дополнительных репозиториев..."
pkg install -y root-repo unstable-repo x11-repo

echo ">>> Установка pip и обновление setuptools..."
pip install --upgrade pip setuptools wheel

echo ">>> Установка популярных Python-библиотек..."
pip install requests beautifulsoup4 lxml flask pyrogram tgcrypto \
            numpy pandas pillow matplotlib aiohttp httpx

echo ">>> Установка завершена!"
python --version
