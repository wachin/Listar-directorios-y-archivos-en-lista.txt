# Listar-directorios-y-archivos-en-lista.txt
Script en Bash para listar los directorios y archivos en lista.txt incluyendo el contenido de los archivos .txt .py

## Qué hace este Script

Este script de bash sirve para analizar un directorio específico y creará un archivo de texto con información sobre los archivos que contiene. Explico su funcionamiento paso a paso:

1. El script define un el directorio de trabajo, por defecto se está "Datos", deberá cambiarlo por el nombre de la carpeta que desee, o si desea poner sus datos en la carpeta Datos. El script definirá el directorio a analizar ("Datos") y el nombre del archivo de salida ("lista.txt").

2. El script limpia el archivo de salida si ya existe (cuando lo usa por segunda vez), para evitar que se acumule información de ejecuciones anteriores.

3. Utiliza el comando `find` para buscar todos los archivos en el directorio especificado y sus subdirectorios.

4. Para cada archivo encontrado:
   - Escribe el nombre del archivo en el archivo de salida.
   - Si el archivo tiene extensión .txt o .py:
     - Escribe "Contenido:" en el archivo de salida.
     - Copia todo el contenido del archivo al archivo de salida.
     - Añade una línea de separación al final del contenido.

En resumen, este script crea un único archivo de texto que contiene:
- Una lista de todos los archivos en el directorio "Datos" y sus subdirectorios.
- El contenido completo de todos los archivos .txt y .py encontrados.

Este tipo de script puede ser útil para:
- Hacer un inventario de archivos en un proyecto.
- Crear una copia de seguridad de texto simple de archivos importantes.
- Facilitar la revisión del código y contenido de archivos de texto en un proyecto.



# ¿Cómo uso el script en una carpeta personalizada?

Ejemplo de uso, imagine que usted tiene una carpeta llamada:

Contenedor

La cual tiene archivos y carpetas, primero, modificaremos ligeramente el script para que se ajuste a su situación, y luego te explicaré cómo ejecutarlo.

Paso 1: Modificar el script

Abre el script en un editor de texto y cambia la línea que define el DIRECTORIO por el tuyo:

```bash
DIRECTORIO="Contenedor"
```

Paso 2: Preparar el entorno

1. Abre una terminal.
2. Navega hasta el directorio donde guardaste el script y donde se encuentra la carpeta "Contenedor".

Paso 3: Asegurate de que el script tiene permisos de ejecución:

Ejecuta el siguiente comando:

```bash
chmod +x dir_file_record.sh
```

claro que también en un administrador de archivos le puede dar clic derecho y buscar la pestaña "Permisos" y marcarlo como ejecutable

**Nota:** Si no está marcado como ejecutable NO funciona.

Paso 4: Ejecutar el script

Ahora puedes ejecutar el script con:

```bash
./dir_file_record.sh
```

Paso 5: Verificar los resultados

Una vez que el script haya terminado de ejecutarse:

1. Busca el archivo "lista.txt" en el mismo directorio donde está el script.
2. Abre "lista.txt" con un editor de texto para ver los resultados.

El archivo "lista.txt" contendrá:
- Una lista de todos los archivos en la carpeta "Contenedor" y sus subcarpetas.
- El contenido completo de todos los archivos .txt y .py encontrados.

**Consejos adicionales:**

1. Si quieres analizar una carpeta con un nombre diferente, puedes editar el script y cambiar el valor de DIRECTORIO.

2. Si deseas cambiar el nombre del archivo de salida, modifica el valor de ARCHIVO_SALIDA en el script.

3. Si quieres incluir otros tipos de archivos además de .txt y .py, puedes modificar la condición en el script. Por ejemplo, para incluir archivos .md:

   ```bash
   if [[ "$archivo" == *.txt || "$archivo" == *.py || "$archivo" == *.md ]]; then
   ```

4. Si deseas crea otro script en base a este, guarda el script con otro nombre, por ejemplo, "analizar_directorio.sh".

5. Ten en cuenta que si tienes muchos archivos o archivos muy grandes, el archivo de salida puede volverse bastante grande.

Dios les bendiga



