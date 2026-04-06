#!/bin/bash

echo "[+] Instalando toolkit sysadmin..."

# Crear directorio destino
mkdir -p ~/.sysadmin_toolkit

# Limpiar instalación anterior dentro del directorio (sin borrar carpeta)
rm -rf ~/.sysadmin_toolkit/*

# Copiar TODO el contenido necesario
cp -r aliases ~/.sysadmin_toolkit/
cp -r core ~/.sysadmin_toolkit/
cp -r modules ~/.sysadmin_toolkit/

# Configurar bashrc (solo una vez)
if ! grep -q "SYSADMIN TOOLKIT" ~/.bashrc; then
  echo "" >> ~/.bashrc
  echo "# SYSADMIN TOOLKIT" >> ~/.bashrc
  echo "for file in ~/.sysadmin_toolkit/aliases/*; do source \$file; done" >> ~/.bashrc
  echo "source ~/.sysadmin_toolkit/core/utils.sh" >> ~/.bashrc
  echo "for file in ~/.sysadmin_toolkit/modules/*.sh; do source \$file; done" >> ~/.bashrc
fi

echo "[+] Instalación completada"
