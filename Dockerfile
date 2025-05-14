# Imagen base con NGINX
FROM nginx:alpine

# Elimina la configuración por defecto
RUN rm -rf /usr/share/nginx/html/*

# Copia el contenido de la carpeta 'public' a la carpeta servida por NGINX
COPY public/ /usr/share/nginx/html

# Expone el puerto 80
EXPOSE 80

# Inicia NGINX en primer plano
CMD ["nginx", "-g", "daemon off;"]
