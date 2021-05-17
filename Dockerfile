FROM node
WORKDIR /app
ADD . /app
RUN npm install
EXPOSE 2021
RUN npm start &
CMD sleep 1