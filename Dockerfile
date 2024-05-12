FROM python:3.12.3-alpine3.18

# Instalar las dependencias necesarias, incluyendo las herramientas de compilación de C
RUN apk update && \
    apk add --no-cache pkgconfig mariadb-dev build-base && \
    rm -rf /var/cache/apk/*

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar el código de la aplicación
COPY ./app .

# Instalar virtualenv
RUN pip install virtualenv

# Crear y activar el entorno virtual
RUN virtualenv venv
RUN source venv/bin/activate

# Otorgar permisos 777 al directorio /app (o al directorio específico que deseas)
RUN chmod -R 777 /app
#RUN chmod -R 777 .
# Instalar las dependencias de Python
RUN pip install --no-cache-dir -r requirements.txt

# Comando de inicio
#CMD ["python", "app.py"]

# Comando de inicio
CMD ["flask", "run", "--host=0.0.0.0"]
