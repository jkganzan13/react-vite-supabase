FROM nginx:stable-alpine

RUN apk add --update nodejs npm yarn

WORKDIR /app

RUN yarn install &&\
    yarn run build

RUN cp -r /app/dist/* /usr/share/nginx/html

EXPOSE 80