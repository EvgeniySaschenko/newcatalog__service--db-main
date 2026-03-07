FROM postgres:15.1-alpine
RUN apk add --update nodejs npm

ARG APP_DIR

WORKDIR ${APP_DIR}

COPY server.js ./