#docker Node versão 14
FROM node:fermium

#diretório padrão para instalação
WORKDIR /usr/src/app

#copiar todos os arquivos para o WORKDIR
COPY . .

RUN npm install -g nodemon
RUN cd /usr/src/app
RUN npm install

#abrir a porta 3000
EXPOSE 3000

#executar npm start
CMD ["npm", "app.js"]