FROM nginx:alpine
# Kopiert alle deine Dateien in das Standard-Verzeichnis von Nginx
COPY . /usr/share/nginx/html
# Informiert Fly.io über den Standard-Port
EXPOSE 80
