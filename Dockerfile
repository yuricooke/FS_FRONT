# Use uma imagem oficial do Node.js como base
FROM node:14

# Defina o diretório de trabalho no container
WORKDIR /app

# Copie o package.json e o package-lock.json
COPY package*.json ./

# Instale as dependências do projeto
RUN npm install

# Copie o restante dos arquivos do projeto
COPY . .

# Expõe a porta que o app usa
EXPOSE 3000

# Comando para iniciar o app
CMD [ "npm", "start" ]