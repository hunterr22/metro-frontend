FROM node:14.1-alpine AS build-env
WORKDIR /app
COPY . .
RUN npm install 

ENV PATH="./node_modules/.bin:$PATH"

COPY . ./
RUN npm run build

FROM nginx:1.17-alpine
RUN apk update && apk add ca-certificates nginx && rm -rf /var/cache/apk/*
RUN mkdir /run/nginx && touch /run/nginx/nginx.pid
WORKDIR /app
COPY --from=build-env /app/build /app
COPY ./default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]