FROM nginx:alpine as production-stage
RUN apk add --upgrade apk-tools
RUn apk upgrade --available

WORKDIR /usr/app

COPY src/ /usr/share/nginx/html/outofservice

COPY nginx/default.conf /etc/nginx/conf.d/

EXPOSE 80
