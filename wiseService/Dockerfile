FROM node:8.15-alpine

# Create app directory
WORKDIR /data/moloch/wiseService/

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json /data/moloch/wiseService/
RUN addgroup -S wiseservice && adduser -S -G wiseservice wiseservice 

# getting su-exex
RUN apk add --no-cache su-exec python make g++

RUN npm install

# Bundle app source
COPY *.js /data/moloch/wiseService/
COPY .jshintrc /data/moloch/wiseService/
COPY wise_entry.sh /data/moloch/wiseService/
# COPY enrichment /data/wise/

RUN chown -R wiseservice /data/moloch/wiseService
RUN chmod +xxx /data/moloch/wiseService/wise_entry.sh

EXPOSE 8081
ENTRYPOINT [ "/data/moloch/wiseService/wise_entry.sh" ]
CMD ["wise"]