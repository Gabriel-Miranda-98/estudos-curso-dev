FROM node:lts-slim

RUN apt-get update && apt-get install -y \
    git \
    && rm -rf /var/lib/apt/lists/*

USER node

WORKDIR /home/node/app

EXPOSE 3000

CMD ["tail", "-f", "/dev/null"]