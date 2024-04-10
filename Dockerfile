FROM node:14
ENV TZ=America/Mexico_City
ENV NODE_ENV=development

RUN echo "from dockerfile"

USER root
WORKDIR /opt/app

COPY package.json .

RUN npm install --quiet
COPY . .

EXPOSE 8080

ENTRYPOINT ["npm"]
CMD ["start"]




# RUN npm rebuild bcrypt --build-from-source 


