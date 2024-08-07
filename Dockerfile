FROM registry.access.redhat.com/ubi8/nodejs-20-minimal

WORKDIR /home/app

COPY package*.json .



RUN npm install 

COPY . .
 
RUN npm run build

EXPOSE 8080

CMD ["npm", "start"]
