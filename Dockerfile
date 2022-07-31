FROM node:latest
# HIL3M V5 Dockerfile 🔒

RUN apt-get update && apt-get -y upgrade
RUN apt-get install ffmpeg -y
RUN git clone https://github.com/hil3m/HIL3M-Bot-V5 /root/AlphaXmd
WORKDIR /root/AlphaXmd/
RUN yarn install --no-audit
RUN npm i -g supervisor
RUN npm i -g concurrently

CMD ["npm", "start"]

# default path: /root/AlphaXmd/
