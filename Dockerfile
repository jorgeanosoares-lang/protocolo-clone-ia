FROM nginx:alpine

# Copia os arquivos do site para a pasta raiz do Nginx
COPY . /usr/share/nginx/html

# Porta padrao HTTP
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
