FROM postgres:15.1-alpine
RUN apk add --update nodejs npm

ARG WORKDIR_BASE
ARG SERVICE

WORKDIR ${WORKDIR_BASE}/${SERVICE}

COPY server.js ./