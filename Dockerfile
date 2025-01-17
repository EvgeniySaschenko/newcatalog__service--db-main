FROM postgres:17.2-alpine
RUN apk add --update nodejs=22.11.0-r1 npm

ARG WORKDIR_BASE

WORKDIR ${WORKDIR_BASE}

COPY server.js ./