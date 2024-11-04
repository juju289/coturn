# Utilise une image de base Ubuntu
FROM ubuntu:20.04

# Met à jour le système et installe coturn
RUN apt-get update && apt-get install -y coturn

# Copie le fichier de configuration turnserver.conf dans le conteneur
COPY turnserver.conf /etc/turnserver.conf

# Expose le port 3478 pour les connexions TURN
EXPOSE 3478

# Commande par défaut pour démarrer le serveur TURN avec le fichier de configuration
CMD ["turnserver", "-c", "/etc/turnserver.conf", "--no-cli"]
