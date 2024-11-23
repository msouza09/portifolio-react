# Usar a imagem do Node.js
FROM node:18

# Definir o diretório de trabalho
WORKDIR /app

# Copiar o package.json e yarn.lock
COPY package.json yarn.lock ./ 

# Instalar o Yarn globalmente
RUN npm install -g yarn

# Instalar as dependências com Yarn
RUN yarn install

# Copiar o restante dos arquivos do projeto
COPY . .

# Expor a porta que o React vai usar
EXPOSE 3000

# Comando para rodar o app com Yarn
CMD ["yarn", "start"]
