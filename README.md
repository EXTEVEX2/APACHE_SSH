# APACHE_SSH

## ¿Cómo construir el contenedor?
docker build -t jesusextevez/extevex .

## ¿Cómo correr el contenedor?
docker run -p 8080:80 -p 2222:22 f676c1dbd16f

# Uso de volumenes
docker run -v" /home/kali/cursodocker/ejemplos/creacionimagenes/apache_ssh/:/var/www/html/ -p 8080:80 -p 2222:22 f676c1dbd16f"

# Compartir imagen local en docker
docker push jesusextevez/extevex
