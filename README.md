# Desafío Falabella

### Descripción

Este proyecto se compone de un servidor web NGINX dockerizado que expone un puerto 80 y una página con mi nombre encryptado en base64.
El repositorio contiene dos carpetas, una con las configuraciones basicas de NGINX y otro con un archivo estatico que es desplegado el momento de ejecutar el contenedor. En la raiz del proyecto se encuentra el Dockerfile y el Readme.

### Requisitos para correr el desafío

- Docker
- Puerto 80 disponible para poder acceder al servidor web

### Instalación de Docker
- Para Mac : [Docker Mac](https://docs.docker.com/desktop/install/mac-install/ "Docker Mac")
- Para Linux: [Docker Linux](https://docs.docker.com/desktop/install/linux-install/ "Docker Linux")

### Compilación Local 
Para poder construir localmente la imagen docker basta con colocarse en la raíz del proyecto y ejecutar :

`docker build -t <image_name>:<tag> .`

*Recuerde reemplazar `<image_name>` por el nombre que desee.*

*Recuerde reemplazar `<tag>`por el tag que desee.*

*ejemplo: `docker build -t test:latest .`*

### Ejecutar imagen creada localmente

Para ejecutar localmente debemos abrir el puerto 80 para poder comunicarnos con el contenedor ejecutamos el siguiente comando:

`docker run -p 80:80 <image_name>:<tag> `

Alternativamente se puede usar el modo independiente (detached) para ejecutar la imagen

`docker run -d -p 80:80 <image_name>:<tag> `

*Recuerde reemplazar` <image_name> `por el nombre que desee.*

*Recuerde reemplazar `<tag>` por el tag que desee.*

*ejemplo: `docker run -p 80:80 test:latest `*

### Ejecutar Imagen desde DockerHUB
La imagen de este proyecto se encuentra en su última versión estable en DockerHUB. Para utilizarla basta con ejecutar el siguiente comando:

`docker run -p 80:80 efh3001/falabella-desafio:latest `

Con esto se bajará la imagen desde DockerHub y el contenedor se iniciará con esta.

### Pruebas
El correcto funcionamiento se puede corroborar utilizando el siguiente comando : 

`$ curl -sL http://localhost | base64 -d`

Corriendo ese comando se debería obtener como respuesta:

`Enrique Fernandez Hernandez`

# Gracias

