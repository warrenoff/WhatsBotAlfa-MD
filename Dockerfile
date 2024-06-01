FROM node:18-slim

WORKDIR /APEX

RUN apt-get update && \
    apt-get install -y git python3 build-essential && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/Alien-Alfa/WhatsBotAlfa-MD.git /APEX

WORKDIR /APEX/WhatsBotAlfa-MD

RUN npm install

RUN npm rebuild

EXPOSE 8000

CMD ["npm", "start"]