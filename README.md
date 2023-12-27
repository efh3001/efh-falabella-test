# ** Desafío Falabella**

### Requisitos para correr el desafio

- Docker

### Instalacion de Docker
- Para Mac : [Docker Mac](https://docs.docker.com/desktop/install/mac-install/ "Docker Mac")
- Para Linux: [Docker Linux](https://docs.docker.com/desktop/install/linux-install/ "Docker Linux")

### Contruccion Local 

Para poder construir localmente la imagen docker basta con colocarse en la raiz del proyecto y ejecutar :
`docker build -t <image_name>:<tag> .`

### Ejecutar imagen creada localmente

Para ejecutar localmente debemos abrir el puerto 80 para poder comunicarnos con el contenedor ejecutamos el siguiente comando:

`docker run -p 80:80 <image_name>:<tag> `

### Ejecutar Imagen desde Docker Hub
La imagen de este proyecto se encuentra en su ultima versión estable en docker hub, para utilizarla basta con ejecutar el siguiente comando:

`docker run -p 80:80 efh3001/falabella-desafio:latest `

Con esto se traerá la imagen desde Docker Hub

### Pruebas

El correcto funcionamiente se puede probar utilizando : 
`$ curl -sL http://localhost | base64 -d`

Corriendo ese comando uno debería obtener como respuesta:

`Enrique Fernandez Hernandez`

# Enjoy

