#!/bin/bash

# Ruta del directorio que quieres analizar
DIRECTORIO="xinput_gui_tkinter"

# Archivo de salida
ARCHIVO_SALIDA="lista.txt"

# Limpiar el archivo de salida si existe
> "$ARCHIVO_SALIDA"

# Recorrer todos los archivos en el directorio y subdirectorios
find "$DIRECTORIO" -type f | while read -r archivo; do
    echo "Archivo: $archivo" >> "$ARCHIVO_SALIDA"

    # Si el archivo es .txt o .py, incluir su contenido
    if [[ "$archivo" == *.txt || "$archivo" == *.py ]]; then
        echo "Contenido:" >> "$ARCHIVO_SALIDA"
        cat "$archivo" >> "$ARCHIVO_SALIDA"
        echo -e "\n--- Fin del archivo ---\n" >> "$ARCHIVO_SALIDA"
    fi
done

