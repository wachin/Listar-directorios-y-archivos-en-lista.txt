#!/bin/bash

# Ruta del directorio que quieres analizar
DIRECTORIO="TextEditor-Qt"

# Archivo de salida
ARCHIVO_SALIDA="lista.txt"

# Lista de archivos o patrones a excluir
EXCLUSIONES=("*.png" "*.db" "*.db")

# Limpiar el archivo de salida si existe
> "$ARCHIVO_SALIDA"

# Recorrer todos los archivos en el directorio y subdirectorios
find "$DIRECTORIO" -type f | while read -r archivo; do
    # Verificar si el archivo coincide con alguna de las exclusiones
    excluir=false
    for patron in "${EXCLUSIONES[@]}"; do
        if [[ "$archivo" == $patron ]]; then
            excluir=true
            break
        fi
    done

    # Si el archivo no está en la lista de exclusiones, procesarlo
    if [ "$excluir" = false ]; then
        echo "Archivo: $archivo" >> "$ARCHIVO_SALIDA"
        
        # Si el archivo no está en las exclusiones, incluir su contenido
        echo "Contenido:" >> "$ARCHIVO_SALIDA"
        cat "$archivo" >> "$ARCHIVO_SALIDA"
        echo -e "\n--- Fin del archivo ---\n" >> "$ARCHIVO_SALIDA"
    fi
done