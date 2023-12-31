# Utilisez l'image de base Node.js version 14
FROM node:18

# Définit le répertoire de travail
WORKDIR /api/src

# Copie les fichiers package.json et package-lock.json
COPY package*.json ../

# Installez les dépendances npm
RUN yarn

# Copie le reste des fichiers de l'application
COPY . .

# Compilez TypeScript en JavaScript
RUN yarn build

# Exposez le port sur lequel l'API va écouter
EXPOSE 8080

# Démarrez l'application
CMD [ "yarn", "start" ]