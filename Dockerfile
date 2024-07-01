FROM node:lts-alpine

COPY . /tlrtcfile

WORKDIR /tlrtcfile/svr

RUN npm install --registry=https://registry.npmmirror.com && npm run build:pro

EXPOSE 9092

ENTRYPOINT ["node"]
