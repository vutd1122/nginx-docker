FROM node:12-alpine as base
RUN addgroup - S appgroup && adduser -S appuser -G appgroup
COPY source/default.conf /etc/nginx/conf.d/
COPY source/index.html /usr/share/nginx/html/
