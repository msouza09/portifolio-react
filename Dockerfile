# Usar a imagem do Node.js
FROM node:18

# Definir o diretório de trabalho
WORKDIR /app

# Copiar o package.json e package-lock.json
COPY package*.json ./

# Instalar as dependências
RUN npm install

# Copiar o restante dos arquivos do projeto
COPY . .

# Expor a porta que o React vai usar
EXPOSE 3000

# Comando para rodar o app
CMD ["npm", "start"]