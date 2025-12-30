FROM bash:devel

RUN apk add --no-cache \
    postgresql-client \
    mongodb-tools \
    jq

WORKDIR /app

COPY scripts/ scripts/

RUN chmod +x scripts/*.sh

CMD ["bash", "scripts/sync.sh"]
