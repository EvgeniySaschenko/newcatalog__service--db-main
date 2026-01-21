FROM postgres:15.1-alpine
RUN apk add --update nodejs npm

ARG WORKDIR_BASE

WORKDIR ${WORKDIR_BASE}

COPY server.js ./