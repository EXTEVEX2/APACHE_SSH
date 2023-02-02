# Imágen base
FROM debian

# Instalamos los paquetes que vamos a utilizar
RUN apt-get update && apt-get install -y \
apache2 \
systemctl \
net-tools \
openssh-server

## SSH
# Creamos un nuevo usuario
RUN useradd -ms /bin/bash sshuser

# Creamos un directorio para las llaves ssh
RUN mkdir -p /home/sshuser/.ssh

# Copiamos la llave pública en el archivo "authorized_keys"
COPY public_key/key.pub /home/sshuser/.ssh/authorized_keys

# Asignamos los privilegios necesarios
RUN chmod 600 /home/sshuser/.ssh/authorized_keys && chown -R sshuser:sshuser>
