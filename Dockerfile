FROM node:19-slim
WORKDIR /app
RUN apt-get update && apt-get install python3 -y
COPY yarn.lock package.json /app/
RUN yarn install
COPY . /app/
RUN npx tsc
EXPOSE 8000
CMD ["yarn", "start"]
