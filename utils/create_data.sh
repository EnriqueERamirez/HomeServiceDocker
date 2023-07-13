#!/bin/bash

# Lista de carpetas a crear
carpetas=(
  "nginx"
  "postgres-joplin"
  "mealie"
  "monica"
  "mysql-monica"
  "openproject-pgdata"
  "openproject-assets"
)

# Ruta base
ruta_base="./data"

# Crear las carpetas si no existen
for carpeta in "${carpetas[@]}"
do
  ruta_completa="$ruta_base/$carpeta"

  # Verificar si la carpeta existe
  if [ ! -d "$ruta_completa" ] 
  then
    # Si no existe, crear la carpeta
    echo "Creando carpeta $ruta_completa..."
    mkdir -p "$ruta_completa"
  else
    # Si ya existe, imprimir un mensaje
    echo "La carpeta $ruta_completa ya existe."
  fi
done

echo "¡Hecho!"
