#!/bin/bash

# Переходим в директорию с пакетами
cd packages/

# Собираем все пакеты
for pkg_dir in */; do
    echo "Собираем $pkg_dir..."
    cd "$pkg_dir"
    makepkg -s --noconfirm --skippgpcheck
    mv *.pkg.tar.zst ../../x86_64/
    cd ..
done

# Обновляем базу репозитория
cd ../x86_64
repo-add metalicaur.db.tar.gz *.pkg.tar.zst

echo "Репо MetalicAUR обновлено!"
