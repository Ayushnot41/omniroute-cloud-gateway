FROM node:22-alpine

WORKDIR /app

RUN apk add --no-cache python3 make g++ git

RUN npm install -g omniroute@3.8.50

EXPOSE 20128

ENV PORT=20128
ENV HOST=0.0.0.0

CMD ["omniroute", "serve", "--log"]
