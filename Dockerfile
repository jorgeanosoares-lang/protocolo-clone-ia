FROM nginx:alpine

RUN rm -f /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html privacidade.html termos.html favicon.svg /usr/share/nginx/html/
COPY midia /usr/share/nginx/html/midia

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
