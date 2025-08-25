#!/bin/bash

# Создаем директорию для собранных пакетов
mkdir -p ../x86_64

# Собираем все пакеты
for pkg_dir in ../packages/*/; do
    cd "$pkg_dir"
    echo "Собираем пакет $(basename $pkg_dir)"
    makepkg -s --noconfirm
    mv *.pkg.tar.zst ../../x86_64/
    cd - > /dev/null
done

# Обновляем базу репозитория
cd ../x86_64
repo-add metalicaur.db.tar.gz *.pkg.tar.zst
