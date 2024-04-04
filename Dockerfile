# Use a imagem oficial do Nginx como base
# Use a imagem base do Nginx
FROM nginx

# Remove o conteúdo padrão do Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copie todos os arquivos do diretório local para o diretório padrão do Nginx
COPY . /usr/share/nginx/html

# Certifique-se de que os arquivos têm permissões adequadas
RUN chown -R nginx:nginx /usr/share/nginx/html

# Exponha a porta 80 para permitir o acesso HTTP
EXPOSE 80

# Comando a ser executado quando o contêiner for iniciado
CMD ["nginx", "-g", "daemon off;"]
