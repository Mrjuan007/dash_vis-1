# Usa la imagen base de la última versión de Python
FROM python:3.12

# Copia el archivo requirements.txt al contenedor
COPY ./requirements.txt /requirements.txt

# Actualiza pip e instala las dependencias necesarias desde requirements.txt
RUN pip install --upgrade pip
RUN pip install --no-cache-dir --upgrade -r /requirements.txt

# Copia los archivos CSV al contenedor
COPY ./PEL.csv /PEL.csv
COPY ./NVD.csv /NVD.csv

# Copia el archivo de código Python al contenedor
COPY ./Actividad#1_dk.py /Actividad#1_dk.py

# Expone el puerto 8050 en el contenedor
EXPOSE 8050

# Ejecuta el script de Python
CMD ["python", "Actividad#1_dk.py"]


