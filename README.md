# ** Desafío Falabella**

### Requisitos para correr el desafío

- Docker
- Puerto 80 disponible para poder acceder al servidor web

### Instalación de Docker
- Para Mac : [Docker Mac](https://docs.docker.com/desktop/install/mac-install/ "Docker Mac")
- Para Linux: [Docker Linux](https://docs.docker.com/desktop/install/linux-install/ "Docker Linux")

### Compilación Local 
Para poder construir localmente la imagen docker basta con colocarse en la raíz del proyecto y ejecutar :

`docker build -t <image_name>:<tag> .`

### Ejecutar imagen creada localmente

Para ejecutar localmente debemos abrir el puerto 80 para poder comunicarnos con el contenedor ejecutamos el siguiente comando:

`docker run -p 80:80 <image_name>:<tag> `

### Ejecutar Imagen desde DockerHUB
La imagen de este proyecto se encuentra en su última versión estable en DockerHUB, para utilizarla basta con ejecutar el siguiente comando:

`docker run -p 80:80 efh3001/falabella-desafio:latest `

Con esto se traerá la imagen desde Docker Hub

### Pruebas
El correcto funcionamiento se puede corroborar utilizando : 

`$ curl -sL http://localhost | base64 -d`

Corriendo ese comando uno debería obtener como respuesta:

`Enrique Fernandez Hernandez`

# Gracias

