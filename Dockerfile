# Nutze ein offizielles Node.js Image als Basis
FROM node:18-slim

# Arbeitsverzeichnis im Container festlegen
WORKDIR /app

# Abhängigkeiten kopieren und installieren
COPY package*.json ./
RUN npm install --production

# Den Rest des Codes kopieren
COPY . .

# Den Port definieren, auf dem die App läuft
EXPOSE 8080

# Startbefehl
CMD ["node", "index.js"]
